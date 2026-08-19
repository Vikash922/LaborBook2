package com.laborbook.auth.firebase;

import android.content.Intent;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.GoogleAuthProvider;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.firestore.FieldValue;
import com.google.firebase.firestore.FirebaseFirestore;
import com.laborbook.R;
import com.laborbook.keep.screen.BookKeepActivity;

import java.util.HashMap;
import java.util.Map;

public final class FirebaseAuthActivity extends AppCompatActivity {
    private static final int RC_GOOGLE_SIGN_IN = 9001;

    private FirebaseAuth auth;
    private EditText nameInput;
    private EditText emailInput;
    private EditText passwordInput;
    private Button submitButton;
    private boolean createMode;
    private GoogleSignInClient googleClient;

    private final ActivityResultLauncher<Intent> googleLauncher = registerForActivityResult(
            new ActivityResultContracts.StartActivityForResult(), result -> {
                if (result.getData() == null) {
                    return;
                }
                try {
                    com.google.android.gms.auth.api.signin.GoogleSignInAccount account =
                            GoogleSignIn.getSignedInAccountFromIntent(result.getData())
                                    .getResult(ApiException.class);
                    if (account == null || account.getIdToken() == null) {
                        showMessage("Google sign-in did not return an account");
                        return;
                    }
                    signInWithCredential(GoogleAuthProvider.getCredential(account.getIdToken(), null));
                } catch (ApiException exception) {
                    showMessage("Google sign-in failed");
                }
            });

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        auth = FirebaseAuth.getInstance();
        if (auth.getCurrentUser() != null) {
            openApp();
            return;
        }

        GoogleSignInOptions options = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
                .requestIdToken(getString(R.string.default_web_client_id))
                .requestEmail()
                .build();
        googleClient = GoogleSignIn.getClient(this, options);
        setContentView(createContentView());
    }

    private LinearLayout createContentView() {
        int padding = (int) (24 * getResources().getDisplayMetrics().density);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER_HORIZONTAL);
        root.setPadding(padding, padding, padding, padding);

        TextView title = new TextView(this);
        title.setText("LaborBook");
        title.setTextSize(28);
        title.setGravity(Gravity.CENTER);
        root.addView(title, new LinearLayout.LayoutParams(-1, -2));

        TextView mode = new TextView(this);
        mode.setTextSize(20);
        mode.setGravity(Gravity.CENTER);
        mode.setPadding(0, padding, 0, padding / 2);
        root.addView(mode, new LinearLayout.LayoutParams(-1, -2));

        nameInput = new EditText(this);
        nameInput.setHint("Name");
        root.addView(nameInput, new LinearLayout.LayoutParams(-1, -2));

        emailInput = new EditText(this);
        emailInput.setHint("Email");
        emailInput.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS);
        root.addView(emailInput, new LinearLayout.LayoutParams(-1, -2));

        passwordInput = new EditText(this);
        passwordInput.setHint("Password");
        passwordInput.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        root.addView(passwordInput, new LinearLayout.LayoutParams(-1, -2));

        submitButton = new Button(this);
        root.addView(submitButton, new LinearLayout.LayoutParams(-1, -2));

        Button googleButton = new Button(this);
        googleButton.setText("Continue with Google");
        googleButton.setOnClickListener(view -> googleLauncher.launch(googleClient.getSignInIntent()));
        root.addView(googleButton, new LinearLayout.LayoutParams(-1, -2));

        Button forgotButton = new Button(this);
        forgotButton.setText("Forgot password?");
        forgotButton.setOnClickListener(view -> resetPassword());
        root.addView(forgotButton, new LinearLayout.LayoutParams(-1, -2));

        Button switchButton = new Button(this);
        switchButton.setOnClickListener(view -> {
            createMode = !createMode;
            updateMode(mode, switchButton);
        });
        root.addView(switchButton, new LinearLayout.LayoutParams(-1, -2));
        updateMode(mode, switchButton);
        return root;
    }

    private void updateMode(TextView mode, Button switchButton) {
        mode.setText(createMode ? "Create account" : "Login");
        nameInput.setVisibility(createMode ? android.view.View.VISIBLE : android.view.View.GONE);
        submitButton.setText(createMode ? "Create account" : "Login");
        switchButton.setText(createMode ? "Already have an account? Login" : "Create a new account");
        submitButton.setOnClickListener(view -> submitEmailAuth());
    }

    private void submitEmailAuth() {
        String email = emailInput.getText().toString().trim();
        String password = passwordInput.getText().toString();
        if (email.isEmpty() || password.length() < 6) {
            showMessage("Enter a valid email and a password of at least 6 characters");
            return;
        }
        submitButton.setEnabled(false);
        if (createMode) {
            auth.createUserWithEmailAndPassword(email, password)
                    .addOnSuccessListener(result -> saveNameAndOpen())
                    .addOnFailureListener(error -> finishRequest(error.getMessage()));
        } else {
            auth.signInWithEmailAndPassword(email, password)
                    .addOnSuccessListener(result -> persistUserAndOpen())
                    .addOnFailureListener(error -> finishRequest(error.getMessage()));
        }
    }

    private void resetPassword() {
        String email = emailInput.getText().toString().trim();
        if (email.isEmpty()) {
            showMessage("Enter your email first");
            return;
        }
        auth.sendPasswordResetEmail(email)
                .addOnSuccessListener(result -> showMessage("Password reset email sent"))
                .addOnFailureListener(error -> showMessage(error.getMessage()));
    }

    private void signInWithCredential(AuthCredential credential) {
        auth.signInWithCredential(credential)
            .addOnSuccessListener(result -> persistUserAndOpen())
                .addOnFailureListener(error -> showMessage(error.getMessage()));
    }

    private void saveNameAndOpen() {
        String name = nameInput.getText().toString().trim();
        if (!name.isEmpty() && auth.getCurrentUser() != null) {
            auth.getCurrentUser().updateProfile(new UserProfileChangeRequest.Builder().setDisplayName(name).build())
                    .addOnCompleteListener(task -> persistUserAndOpen());
        } else {
            persistUserAndOpen();
        }
    }

    private void persistUserAndOpen() {
        if (auth.getCurrentUser() == null) {
            showMessage("Authentication user is missing");
            return;
        }
        String uid = auth.getCurrentUser().getUid();
        Map<String, Object> profile = new HashMap<>();
        profile.put("uid", uid);
        profile.put("email", auth.getCurrentUser().getEmail());
        profile.put("displayName", auth.getCurrentUser().getDisplayName());
        profile.put("updatedAt", FieldValue.serverTimestamp());
        FirebaseFirestore.getInstance().collection("users").document(uid).set(profile, com.google.firebase.firestore.SetOptions.merge())
                .addOnSuccessListener(result -> openApp())
                .addOnFailureListener(error -> showMessage(error.getMessage()));
    }

    private void finishRequest(String message) {
        submitButton.setEnabled(true);
        showMessage(message);
    }

    private void openApp() {
        startActivity(new Intent(this, BookKeepActivity.class));
        finish();
    }

    private void showMessage(String message) {
        Toast.makeText(this, message == null ? "Authentication failed" : message, Toast.LENGTH_LONG).show();
    }
}
