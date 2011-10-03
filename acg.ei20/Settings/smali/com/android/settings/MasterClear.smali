.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Activity;
.source "MasterClear.java"


# static fields
.field private static final BOOTANI_IMAGE:Ljava/lang/String; = "/data/local/tmp/bootani.qmg"

.field private static final BOOTANI_IMAGE_TEMP:Ljava/lang/String; = "/data/factory/factorydatareset2.tmp"

.field private static final DBKEY_MT_PWD:Ljava/lang/String; = "mt_pwd"

.field private static final DBKEY_MT_STATE:Ljava/lang/String; = "mt_state"

.field private static final FACTORYRESET:Ljava/lang/String; = "/data/factory/factorydatareset.tmp"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final LOG_TAG:Ljava/lang/String; = "MasterClear"

.field private static final MAX_PHPWD:I = 0x8

.field private static final SHUTDOWN_IMAGE:Ljava/lang/String; = "/data/local/tmp/shutdown_1.png"

.field private static final SHUTDOWN_IMAGE_TEMP:Ljava/lang/String; = "/data/factory/factorydatareset3.tmp"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/local/tmp/wallpaper.bmp"

.field private static final WALLPAPER_IMAGE_TEMP:Ljava/lang/String; = "/data/factory/factorydatareset1.tmp"


# instance fields
.field isOkClicked:Z

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPhonePwdET:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Lcom/android/settings/MasterClear$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->makeTempFileForFactoryDataReset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runMobileTrackerPwdConfirmation()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    .line 318
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 341
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 346
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MasterClear$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$6;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 355
    return-void
.end method

.method private makeTempFileForFactoryDataReset()V
    .locals 7

    .prologue
    const-string v6, "MasterClear"

    .line 96
    const-string v3, "/data/local/tmp/wallpaper.bmp"

    const-string v4, "/data/factory/factorydatareset1.tmp"

    const-string v5, "factorydatareset1"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/MasterClear;->tempFileCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "/data/local/tmp/bootani.qmg"

    const-string v4, "/data/factory/factorydatareset2.tmp"

    const-string v5, "factorydatareset2"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/MasterClear;->tempFileCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "/data/local/tmp/shutdown_1.png"

    const-string v4, "/data/factory/factorydatareset3.tmp"

    const-string v5, "factorydatareset3"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/MasterClear;->tempFileCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/factory/factorydatareset.tmp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, tempfile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 106
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v1, fos:Ljava/io/FileOutputStream;
    const-string v3, "FACTORYRESET"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 109
    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do make temp file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #tempfile:Ljava/io/File;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 111
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do not make temp file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 180
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090302

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f090303

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private runMobileTrackerPwdConfirmation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0b0087

    const/16 v5, 0x8

    .line 211
    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 214
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v3, 0x7f0b0085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const v3, 0x7f0b0086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 224
    .local v1, enterpwdET:Landroid/widget/EditText;
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 225
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 227
    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    .line 232
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 237
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09057a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/MasterClear$3;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/MasterClear$2;

    invoke-direct {v5, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 275
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 277
    new-instance v3, Lcom/android/settings/MasterClear$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method

.method private tempFileCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "imageFileName"
    .parameter "fileNameForBackup"
    .parameter "info"

    .prologue
    const-string v7, "MasterClear"

    .line 117
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, imageFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need to backup : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, tempfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 123
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 126
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "do make temp file :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #imageFile:Ljava/io/File;
    .end local v3           #tempfile:Ljava/io/File;
    :goto_0
    return-void

    .line 127
    .restart local v2       #imageFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 128
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "do not make temp file :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #imageFile:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 134
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #imageFile:Ljava/io/File;
    :cond_0
    :try_start_3
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not need to backup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    const/16 v1, 0x37

    if-eq p1, v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mt_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, mobileTrackerStatus:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runMobileTrackerPwdConfirmation()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    goto :goto_0

    .line 203
    .end local v0           #mobileTrackerStatus:I
    :cond_2
    if-nez p2, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->finish()V

    goto :goto_0

    .line 206
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 361
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 362
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalView:Landroid/view/View;

    .line 363
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    .line 364
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 366
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 367
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 380
    :cond_0
    return-void
.end method
