package com.rebuilt.app

import android.app.AlertDialog
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.firestore.FirebaseFirestore
import com.google.firebase.firestore.Query

class MainActivity : AppCompatActivity() {
    private val auth by lazy { FirebaseAuth.getInstance() }
    private val firestore by lazy { FirebaseFirestore.getInstance() }
    private lateinit var workers: LinearLayout

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (auth.currentUser == null) {
            finish()
            return
        }
        setContentView(buildView())
        loadWorkers()
    }

    private fun buildView(): View {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(24, 32, 24, 24)
        }
        root.addView(TextView(this).apply { text = "LaborBook"; textSize = 28f })
        root.addView(Button(this).apply {
            text = "Add worker"
            setOnClickListener { showAddWorkerDialog() }
        })
        root.addView(Button(this).apply {
            text = "Logout"
            setOnClickListener { auth.signOut(); finish() }
        })
        workers = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        root.addView(workers)
        return root
    }

    private fun showAddWorkerDialog() {
        val input = EditText(this).apply { hint = "Worker name" }
        AlertDialog.Builder(this).setTitle("Add worker").setView(input)
            .setPositiveButton("Save") { _, _ ->
                val workerName = input.text.toString().trim()
                val uid = auth.currentUser?.uid ?: return@setPositiveButton
                if (workerName.isEmpty()) return@setPositiveButton
                firestore.collection("users").document(uid).collection("workers").add(
                    mapOf("name" to workerName, "createdAt" to com.google.firebase.firestore.FieldValue.serverTimestamp())
                ).addOnSuccessListener { loadWorkers() }
            }.setNegativeButton("Cancel", null).show()
    }

    private fun loadWorkers() {
        val uid = auth.currentUser?.uid ?: return
        firestore.collection("users").document(uid).collection("workers")
            .orderBy("createdAt", Query.Direction.ASCENDING).get()
            .addOnSuccessListener { snapshot ->
                workers.removeAllViews()
                snapshot.documents.forEach { document ->
                    val name = document.getString("name") ?: return@forEach
                    val row = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
                    row.addView(TextView(this).apply { text = name; textSize = 18f }, LinearLayout.LayoutParams(0, -2, 1f))
                    row.addView(Button(this).apply { text = "Present"; setOnClickListener { saveAttendance(document.id, name, true) } })
                    row.addView(Button(this).apply { text = "Absent"; setOnClickListener { saveAttendance(document.id, name, false) } })
                    workers.addView(row)
                }
            }
    }

    private fun saveAttendance(workerId: String, workerName: String, present: Boolean) {
        val uid = auth.currentUser?.uid ?: return
        val date = java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.US).format(java.util.Date())
        firestore.collection("users").document(uid).collection("attendance")
            .document("${workerId}_$date").set(
                mapOf("workerId" to workerId, "workerName" to workerName, "date" to date, "present" to present)
            )
    }
}
