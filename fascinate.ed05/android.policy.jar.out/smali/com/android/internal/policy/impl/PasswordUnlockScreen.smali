.class public Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0x7d0L

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static mIsInDeadlineCountDown:Z

.field private static mIsLastChanceMode:Z

.field private static mIsRecoveryMode:Z

.field private static unlocked:Z


# instance fields
.field private mButtonsHolder:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPasswordText:Landroid/widget/TextView;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mRecoverButton:Landroid/widget/Button;

.field private mRecoveryReceiver:Landroid/content/BroadcastReceiver;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field passwordChangeNeeded:Z

.field quality:I

.field private r:Ljava/lang/Runnable;

.field refreshView:Landroid/os/Handler;

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->unlocked:Z

    .line 127
    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    .line 103
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 105
    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    .line 106
    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    .line 552
    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRecoveryReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->tm:Landroid/telephony/TelephonyManager;

    .line 140
    iget v3, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 141
    iget v3, p2, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    .line 142
    iput-object p4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 143
    iput-object p5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 144
    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 147
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 148
    const v3, 0x1090035

    invoke-virtual {v2, v3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    .line 154
    iget v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    if-eq v5, v3, :cond_0

    const/high16 v3, 0x5

    iget v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    if-ne v3, v4, :cond_2

    :cond_0
    move v1, v7

    .line 157
    .local v1, isAlpha:Z
    :goto_1
    const v3, 0x102013d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 158
    const v3, 0x10201c1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 159
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 160
    const v3, 0x10201aa

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 161
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 163
    const v3, 0x10201bf

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    .line 166
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->checkDevicePasswordExpired()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    .line 170
    const v3, 0x10201c0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    .line 171
    const v3, 0x10201c2

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mButtonsHolder:Landroid/widget/RelativeLayout;

    .line 172
    const v3, 0x10201c3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRecoverButton:Landroid/widget/Button;

    .line 173
    const v3, 0x10201c4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCancelButton:Landroid/widget/Button;

    .line 174
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    .line 176
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRecoveryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRecoverButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v3, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v3, p1, v4, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v1, :cond_3

    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-ne v4, v7, :cond_4

    const/4 v4, 0x4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 237
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    if-eqz v1, :cond_5

    .line 242
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 247
    :goto_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x1070015

    :goto_5
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 250
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->refreshView:Landroid/os/Handler;

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    return-void

    .line 150
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #isAlpha:Z
    :cond_1
    const v3, 0x1090034

    invoke-virtual {v2, v3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    move v1, v6

    .line 154
    goto/16 :goto_1

    .restart local v1       #isAlpha:Z
    :cond_3
    move v4, v7

    .line 232
    goto :goto_2

    :cond_4
    move v4, v6

    .line 235
    goto :goto_3

    .line 244
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_4

    :cond_6
    move v4, v6

    .line 247
    goto :goto_5
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLastChanceMode:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->onPhoneStateChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 432
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 451
    return-void
.end method

.method private hideRecoveryView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    const v1, 0x1040360

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mButtonsHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    .line 540
    return-void
.end method

.method private onPhoneStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v1, 0x104036a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v1, 0x108008d

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v1, 0x1040369

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v1, 0x108019f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private showRecoveryView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 518
    sput-boolean v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    const v1, 0x10401cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    const v1, 0x10401ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mButtonsHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    .line 528
    sput-boolean v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLastChanceMode:Z

    .line 529
    return-void
.end method

.method private verifyPasswordAndUnlock()V
    .locals 14

    .prologue
    .line 341
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, entry:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    .line 343
    .local v4, isConfirmed:Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 345
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    if-eqz v10, :cond_0

    .line 347
    const-string v10, "PasswordUnlockScreen"

    const-string v11, "password change needed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 351
    .local v6, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v9

    .line 352
    .local v9, minLength:I
    iget v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    invoke-virtual {v6, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v8

    .line 354
    .local v8, maxLength:I
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v5, it:Landroid/content/Intent;
    const-string v10, "lockscreen.password_type"

    iget v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v10, "lockscreen.password_min"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v10, "lockscreen.password_max"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v10, "confirm_credentials"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    const/high16 v10, 0x40

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .end local v5           #it:Landroid/content/Intent;
    .end local v6           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v8           #maxLength:I
    .end local v9           #minLength:I
    :cond_0
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    .line 367
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLastChanceMode:Z

    .line 368
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->unlocked:Z

    .line 369
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 370
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v10}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 372
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceLockEnabled(Z)V

    .line 418
    :cond_1
    :goto_0
    sget-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->unlocked:Z

    if-nez v10, :cond_2

    .line 419
    if-nez v4, :cond_2

    sget-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    if-nez v10, :cond_2

    .line 420
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    const v11, 0x104036c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 421
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    return-void

    .line 374
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_1

    .line 377
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->unlocked:Z

    .line 378
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v10}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 379
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v7

    .line 380
    .local v7, max:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 381
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v10

    rem-int/lit8 v10, v10, 0x5

    if-nez v10, :cond_4

    .line 383
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    .line 385
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 386
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 390
    .end local v0           #deadline:J
    :cond_4
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v10

    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ne v10, v11, :cond_5

    .line 391
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLastChanceMode:Z

    .line 392
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :cond_5
    if-lez v7, :cond_1

    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v10

    rem-int/2addr v10, v7

    if-nez v10, :cond_1

    .line 395
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    .line 397
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v11

    if-ne v10, v11, :cond_6

    .line 398
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->recoverPassword()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showRecoveryView()V

    goto/16 :goto_0

    .line 404
    :cond_6
    const/4 v10, 0x0

    :try_start_0
    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    .line 405
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLastChanceMode:Z

    .line 406
    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 407
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 409
    .local v2, e:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "exception in wiping data"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeDevicePasswordAndUnlock()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 550
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 462
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 464
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 468
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 338
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 474
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 478
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRecoveryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 567
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 487
    if-nez p2, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 483
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 496
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 500
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 504
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 305
    sget-boolean v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLastChanceMode:Z

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mNewPasswordText:Landroid/widget/TextView;

    const v3, 0x10401f0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 309
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    if-eqz v2, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showRecoveryView()V

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 322
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 325
    :cond_3
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 508
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 573
    return-void
.end method
