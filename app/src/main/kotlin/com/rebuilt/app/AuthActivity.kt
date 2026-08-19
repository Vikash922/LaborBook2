package com.rebuilt.app

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.auth.api.signin.GoogleSignInOptions
import com.google.android.gms.common.api.ApiException
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.GoogleAuthProvider
import com.google.firebase.firestore.FieldValue
import com.google.firebase.firestore.FirebaseFirestore

class AuthActivity : AppCompatActivity() {
    private val auth by lazy { FirebaseAuth.getInstance() }
    private val firestore by lazy { FirebaseFirestore.getInstance() }
    private lateinit var name: EditText
    private lateinit var email: EditText
    private lateinit var password: EditText
    private lateinit var submit: Button
    private lateinit var modeButton: Button
    private var createMode = false

    private val googleLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        val account = result.data?.let { GoogleSignIn.getSignedInAccountFromIntent(it) }
        try {
            val token = account?.getResult(ApiException::class.java)?.idToken
            if (token == null) showMessage("Google sign-in failed")
            else auth.signInWithCredential(GoogleAuthProvider.getCredential(token, null))
                .addOnSuccessListener { saveProfileAndOpen() }
                .addOnFailureListener { showMessage(it.message) }
        } catch (_: ApiException) {
            showMessage("Google sign-in cancelled")
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (auth.currentUser != null) {
            openMain()
            return
        }
        setContentView(buildView())
    }

    private fun buildView(): View {
        val margin = (24 * resources.displayMetrics.density).toInt()
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(margin, margin, margin, margin)
        }
        root.addView(TextView(this).apply { text = "LaborBook"; textSize = 28f })
        root.addView(TextView(this).apply { text = "Login or create your account"; textSize = 18f })
        name = EditText(this).apply { hint = "Name" }
        email = EditText(this).apply { hint = "Email" }
        password = EditText(this).apply { hint = "Password"; inputType = 0x81 }
        root.addView(name)
        root.addView(email)
        root.addView(password)
        submit = Button(this).apply { setOnClickListener { submitEmail() } }
        root.addView(submit)
        root.addView(Button(this).apply {
            text = "Continue with Google"
            setOnClickListener { signInWithGoogle() }
        })
        root.addView(Button(this).apply {
            text = "Forgot password?"
            setOnClickListener { sendResetEmail() }
        })
        modeButton = Button(this).apply { setOnClickListener { toggleMode() } }
        root.addView(modeButton)
        updateMode()
        return root
    }

    private fun toggleMode() {
        createMode = !createMode
        updateMode()
    }

    private fun updateMode() {
        name.visibility = if (createMode) View.VISIBLE else View.GONE
        submit.text = if (createMode) "Create account" else "Login"
        modeButton.text = if (createMode) "Already have an account? Login" else "Create a new account"
    }

    private fun submitEmail() {
        val address = email.text.toString().trim()
        val secret = password.text.toString()
        if (address.isEmpty() || secret.length < 6) {
            showMessage("Enter a valid email and password of at least 6 characters")
            return
        }
        val task = if (createMode) auth.createUserWithEmailAndPassword(address, secret)
        else auth.signInWithEmailAndPassword(address, secret)
        task.addOnSuccessListener {
            if (createMode && name.text.isNotBlank()) {
                auth.currentUser?.updateProfile(
                    com.google.firebase.auth.UserProfileChangeRequest.Builder()
                        .setDisplayName(name.text.toString().trim()).build()
                )?.addOnCompleteListener { saveProfileAndOpen() }
            } else saveProfileAndOpen()
        }.addOnFailureListener { showMessage(it.message) }
    }

    private fun signInWithGoogle() {
        val options = GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
            .requestIdToken(getString(com.rebuilt.R.string.default_web_client_id))
            .requestEmail().build()
        googleLauncher.launch(GoogleSignIn.getClient(this, options).signInIntent)
    }

    private fun sendResetEmail() {
        val address = email.text.toString().trim()
        if (address.isEmpty()) { showMessage("Enter your email first"); return }
        auth.sendPasswordResetEmail(address)
            .addOnSuccessListener { showMessage("Password reset email sent") }
            .addOnFailureListener { showMessage(it.message) }
    }

    private fun saveProfileAndOpen() {
        val user = auth.currentUser ?: return showMessage("User session missing")
        val data = mapOf<String, Any?>(
            "uid" to user.uid,
            "email" to user.email,
            "displayName" to user.displayName,
            "updatedAt" to FieldValue.serverTimestamp()
        )
        firestore.collection("users").document(user.uid).set(data)
            .addOnSuccessListener { openMain() }
            .addOnFailureListener { showMessage(it.message) }
    }

    private fun openMain() {
        startActivity(Intent(this, MainActivity::class.java))
        finish()
    }

    private fun showMessage(message: String?) = Toast.makeText(this, message ?: "Something went wrong", Toast.LENGTH_LONG).show()
}
