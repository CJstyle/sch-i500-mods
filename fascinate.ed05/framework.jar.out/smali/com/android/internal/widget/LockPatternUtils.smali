.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$NotiMode;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final GLASS_LOCK:I = 0x0

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field private static final LOCKSCREEN_TYPE_KEY:Ljava/lang/String; = "lockscreen_type_key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "/system/password.key"

.field private static final LOCK_PASSWORD_HISTORY_FILE:Ljava/lang/String; = "/system/password_history.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "/system/gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "/system/recovery_password.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x3

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PUZZLE_LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static mIsPhonelock:Z

.field private static mPatternActivated:Z

.field private static mSimLockPrepared:Z

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPasswordHistoryFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MSG_PKG:Ljava/lang/String;

.field private final NOTI_NONE_COUNT:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->CALL_PKG:Ljava/lang/String;

    .line 139
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->MSG_PKG:Ljava/lang/String;

    .line 140
    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->EMAIL_PKG:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils;->REQ_INDEX_CALL_EMAIL:I

    .line 142
    const/16 v0, 0x7b

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils;->REQ_INDEX_MSG:I

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils;->NOTI_NONE_COUNT:I

    .line 160
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 163
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/gesture.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/password.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/password_history.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/recovery_password.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    .line 176
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    .line 179
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    .line 182
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->readSimLockState()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 184
    :cond_1
    return-void
.end method

.method public static computePasswordComplexChars(Ljava/lang/String;)I
    .locals 4
    .parameter "password"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, countComplex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 547
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 548
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 549
    add-int/lit8 v0, v0, 0x1

    .line 547
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_1
    return v0
.end method

.method public static computePasswordHasSymbol(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 557
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    const/4 v2, 0x1

    .line 563
    :goto_1
    return v2

    .line 557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 518
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 519
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 520
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 519
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 527
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 528
    const/high16 v4, 0x5

    .line 536
    :goto_2
    return v4

    .line 530
    :cond_2
    if-eqz v1, :cond_3

    .line 531
    const/high16 v4, 0x4

    goto :goto_2

    .line 533
    :cond_3
    if-eqz v0, :cond_4

    .line 534
    const/high16 v4, 0x2

    goto :goto_2

    .line 536
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "secureSettingKey"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1130
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "lockscreen.password_salt"

    .line 900
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 901
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 903
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 904
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 905
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 906
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 908
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private nonEmptyFileExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 362
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v2, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    .line 364
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    const/4 v3, 0x1

    .line 369
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v3

    .line 366
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v3, v4

    .line 367
    goto :goto_0

    .line 368
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, ioe:Ljava/io/IOException;
    move v3, v4

    .line 369
    goto :goto_0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 880
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 881
    const/4 v7, 0x0

    .line 895
    :goto_0
    return-object v7

    .line 884
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 885
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 886
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 887
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 888
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 891
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v3

    .line 892
    .local v3, md:Landroid/security/MessageDigest;
    invoke-virtual {v3, v6}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, hash:[B
    move-object v7, v1

    .line 893
    goto :goto_0

    .line 894
    .end local v1           #hash:[B
    .end local v3           #md:Landroid/security/MessageDigest;
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v7, v6

    .line 895
    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 860
    const-string v4, ""

    .line 869
    :goto_0
    return-object v4

    .line 862
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 864
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 865
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 866
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 867
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 869
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private readSimLockState()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "0"

    .line 1161
    const-string v2, "ril.pin_mode"

    const-string v3, "0"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1162
    .local v1, pinMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1164
    .local v0, isAirplaneMode:I
    if-ne v0, v5, :cond_0

    move v2, v4

    .line 1168
    :goto_0
    return v2

    .line 1165
    :cond_0
    if-nez v1, :cond_1

    move v2, v4

    goto :goto_0

    .line 1166
    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 1167
    :cond_2
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1168
    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    return-void

    .line 1135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1145
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 845
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 846
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 847
    aget-byte v0, v1, v2

    .line 848
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    .end local v0           #b:B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    const-string v5, "0123456789ABCDEF"

    .line 939
    const-string v0, "0123456789ABCDEF"

    .line 940
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 941
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addUnlockCounter()V
    .locals 5

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUnlockCounter()J

    move-result-wide v0

    .line 992
    .local v0, current_count:J
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 994
    :goto_0
    return-void

    .line 993
    :cond_0
    const-string/jumbo v2, "unlock_counter"

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public checkDevicePasswordExpired()Z
    .locals 23

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v11

    .line 240
    .local v11, checkExpires:I
    if-gtz v11, :cond_0

    .line 241
    const/4 v4, 0x0

    .line 286
    :goto_0
    return v4

    .line 242
    :cond_0
    const/16 v18, 0x0

    .line 245
    .local v18, pwd:Ljava/lang/String;
    :try_start_0
    new-instance v19, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v5, "r"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v19, raf:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 247
    .local v20, stored:[B
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v16

    .line 248
    .local v16, got:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    .line 249
    if-gtz v16, :cond_1

    .line 250
    const/4 v4, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 259
    if-nez v18, :cond_2

    .line 260
    const/4 v4, 0x0

    goto :goto_0

    .line 254
    .end local v16           #got:I
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .end local v20           #stored:[B
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 255
    .local v15, fnfe:Ljava/io/FileNotFoundException;
    const/4 v4, 0x1

    goto :goto_0

    .line 256
    .end local v15           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 257
    .local v17, ioe:Ljava/io/IOException;
    const/4 v4, 0x1

    goto :goto_0

    .line 262
    .end local v17           #ioe:Ljava/io/IOException;
    .restart local v16       #got:I
    .restart local v19       #raf:Ljava/io/RandomAccessFile;
    .restart local v20       #stored:[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "set_date"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password like \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "set_date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IS NOT NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 270
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 271
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 274
    .local v12, currentDate:J
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 275
    .local v21, storedDate:J
    sub-long v4, v12, v21

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v14, v4

    .line 278
    .local v14, days:I
    if-ltz v14, :cond_3

    if-lt v14, v11, :cond_4

    :cond_3
    if-gez v14, :cond_5

    .line 279
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 283
    .end local v12           #currentDate:J
    .end local v14           #days:I
    .end local v21           #storedDate:J
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 284
    const/4 v10, 0x0

    .line 286
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    .line 337
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 339
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 340
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 341
    if-gtz v1, :cond_0

    move v5, v7

    .line 349
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 345
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 346
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 347
    goto :goto_0

    .line 348
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 349
    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    .line 312
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 314
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 315
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 316
    if-gtz v1, :cond_0

    move v5, v7

    .line 324
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 320
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 321
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 322
    goto :goto_0

    .line 323
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 324
    goto :goto_0
.end method

.method public clearLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V

    .line 454
    const/high16 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 455
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 457
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 458
    return-void
.end method

.method public clearPasswrodLock()V
    .locals 3

    .prologue
    .line 464
    const/4 v0, 0x0

    const/high16 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 466
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 467
    return-void
.end method

.method public clearPatternLock()V
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 473
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 474
    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, activePasswordQuality:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 425
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const/high16 v0, 0x1

    goto :goto_0

    .line 430
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const/high16 v0, 0x2

    goto :goto_0

    .line 435
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/high16 v0, 0x4

    goto :goto_0

    .line 440
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const/high16 v0, 0x5

    goto :goto_0

    .line 423
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDeviceFailedAttempts()I
    .locals 3

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "devicelock_failed_attempts"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 1186
    const/4 v0, -0x1

    .line 1187
    .local v0, index:I
    const/4 v4, 0x1

    .line 1188
    .local v4, reqNum:I
    const-string v2, "com.android.phone"

    .line 1189
    .local v2, pkg:Ljava/lang/String;
    const-string/jumbo v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v1

    .line 1192
    .local v1, mService:Landroid/app/IStatusBar;
    :try_start_0
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_0

    const-string v2, "com.android.phone"

    .line 1197
    :goto_0
    invoke-interface {v1, v2, v4}, Landroid/app/IStatusBar;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v0

    .line 1199
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move-object v5, v6

    .line 1206
    :goto_1
    return-object v5

    .line 1193
    :cond_0
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_1

    const-string v2, "com.android.mms"

    const/16 v4, 0x7b

    goto :goto_0

    .line 1194
    :cond_1
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedEMail:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_2

    const-string v2, "com.android.email"

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 1195
    goto :goto_1

    .line 1200
    :cond_3
    invoke-interface {v1, v0}, Landroid/app/IStatusBar;->getEventIntent(I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 1202
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1203
    .local v3, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 1206
    goto :goto_1
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 3

    .prologue
    .line 834
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockConfig()I
    .locals 3

    .prologue
    .line 1308
    const-string v0, "4DMECH"

    const-string v1, "LockPatternUtils.getLockConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lockscreen_type_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1031
    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1032
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1033
    .local v2, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    :cond_0
    move-wide v4, v6

    .line 1036
    :goto_0
    return-wide v4

    :cond_1
    move-wide v4, v0

    goto :goto_0
.end method

.method public getMinPasswordComplexChars()I
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    :cond_0
    const/4 v1, 0x0

    .line 1070
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 1210
    const/4 v0, -0x1

    .line 1211
    .local v0, index:I
    const/4 v4, 0x1

    .line 1212
    .local v4, reqNum:I
    const-string v2, "com.android.phone"

    .line 1213
    .local v2, pkg:Ljava/lang/String;
    const-string/jumbo v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v1

    .line 1215
    .local v1, mService:Landroid/app/IStatusBar;
    if-nez v1, :cond_0

    move v5, v6

    .line 1232
    :goto_0
    return v5

    .line 1219
    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_1

    const-string v2, "com.android.phone"

    .line 1224
    :goto_1
    invoke-interface {v1, v2, v4}, Landroid/app/IStatusBar;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v0

    .line 1226
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    move v5, v6

    goto :goto_0

    .line 1220
    :cond_1
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_2

    const-string v2, "com.android.mms"

    const/16 v4, 0x7b

    goto :goto_1

    .line 1221
    :cond_2
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedEMail:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    if-ne p1, v5, :cond_3

    const-string v2, "com.android.email"

    goto :goto_1

    :cond_3
    move v5, v6

    .line 1222
    goto :goto_0

    .line 1227
    :cond_4
    invoke-interface {v1, v0}, Landroid/app/IStatusBar;->getEventCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1230
    .local v3, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move v5, v6

    .line 1232
    goto :goto_0
.end method

.method public getPasswordHistorySize()I
    .locals 7

    .prologue
    .line 708
    const/4 v3, 0x0

    .line 710
    .local v3, res:I
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v6, "r"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v2, raf:Ljava/io/RandomAccessFile;
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 713
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    .line 722
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .end local v3           #res:I
    .local v4, res:I
    :goto_1
    return v4

    .line 719
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v4, v3

    .line 720
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1

    .line 721
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, ioe:Ljava/io/IOException;
    move v4, v3

    .line 722
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1
.end method

.method public getPhonePassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1075
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1076
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v11, "password"

    .line 635
    const/4 v7, 0x0

    .line 636
    .local v7, recoveryPassword:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "password"

    aput-object v11, v2, v9

    const-string/jumbo v3, "set_date IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 644
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 645
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 646
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 647
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 649
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v6, 0x0

    .line 655
    :cond_1
    if-nez v7, :cond_2

    .line 656
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v7

    .line 660
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 663
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "password"

    invoke-virtual {v8, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v0, "set_date"

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 670
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 674
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    return-object v7
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getUnlockCounter()J
    .locals 3

    .prologue
    .line 997
    const-string/jumbo v0, "unlock_counter"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateRecoveryPassword()V
    .locals 0

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 696
    return-void
.end method

.method public isDeviceLock()Z
    .locals 1

    .prologue
    .line 1081
    const-string v0, "devicelock_pattern_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .locals 5

    .prologue
    .line 952
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 953
    .local v0, mode:J
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x40000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x50000

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLockPatternEnabled()Z
    .locals 4

    .prologue
    const-wide/32 v2, 0x10000

    .line 963
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissedEventRemained()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1236
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v0

    .line 1238
    .local v0, mService:Landroid/app/IStatusBar;
    if-nez v0, :cond_0

    move v2, v6

    .line 1249
    :goto_0
    return v2

    .line 1242
    :cond_0
    :try_start_0
    const-string v2, "com.android.phone"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/app/IStatusBar;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v5, :cond_1

    move v2, v4

    goto :goto_0

    .line 1243
    :cond_1
    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    invoke-interface {v0, v2, v3}, Landroid/app/IStatusBar;->getEventIndexWithReq(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v2, v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1247
    .local v1, re:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1           #re:Landroid/os/RemoteException;
    :cond_2
    move v2, v6

    .line 1249
    goto :goto_0
.end method

.method public isMobileTrackerEnabled()Z
    .locals 2

    .prologue
    .line 1296
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1297
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method public isPatternEverChosen()Z
    .locals 1

    .prologue
    .line 414
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPatternLockActivated()Z
    .locals 1

    .prologue
    .line 1125
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 1

    .prologue
    .line 1045
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneLock()Z
    .locals 2

    .prologue
    .line 1107
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1108
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .line 1149
    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_3

    move v1, v8

    .line 1150
    .local v1, isPattern:Z
    :goto_0
    const-wide/32 v5, 0x20000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x40000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x50000

    cmp-long v5, v2, v5

    if-nez v5, :cond_4

    :cond_0
    move v0, v8

    .line 1153
    .local v0, isPassword:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v4, v8

    .line 1155
    .local v4, secure:Z
    :goto_2
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_3
    move v1, v7

    .line 1149
    goto :goto_0

    .restart local v1       #isPattern:Z
    :cond_4
    move v0, v7

    .line 1150
    goto :goto_1

    .restart local v0       #isPassword:Z
    :cond_5
    move v4, v7

    .line 1153
    goto :goto_2
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    .line 1172
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1004
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 1

    .prologue
    .line 979
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    .line 922
    if-nez p1, :cond_0

    .line 923
    const/4 v6, 0x0

    .line 935
    :goto_0
    return-object v6

    .line 925
    :cond_0
    const/4 v0, 0x0

    .line 926
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 928
    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 929
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 930
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 931
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :goto_1
    move-object v6, v2

    .line 935
    goto :goto_0

    .line 932
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 933
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public removeRecoveryPasswords()V
    .locals 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "set_date IS NULL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 688
    return-void
.end method

.method public reportFailedPasswordAttempt()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 297
    return-void
.end method

.method public reportPhoneUnlocked()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1113
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    .line 1114
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    .line 1117
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1118
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const-string v1, "0"

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 1120
    :cond_0
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 301
    return-void
.end method

.method public resumeCall()Z
    .locals 4

    .prologue
    .line 1280
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1282
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    const/4 v2, 0x1

    .line 1290
    :goto_0
    return v2

    .line 1285
    :catch_0
    move-exception v0

    .line 1288
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Exception"

    const-string v3, "Including log messages in the catch block"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 12
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 576
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v8

    if-lez v8, :cond_0

    .line 579
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;ZI)V

    .line 624
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    .line 588
    .local v5, hash:[B
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .local v7, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_1

    .line 591
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 595
    :goto_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 597
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_3

    .line 598
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, computedQuality:I
    const-string v8, "lockscreen.password_type"

    int-to-long v9, v0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 600
    if-eqz v0, :cond_2

    .line 602
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v1

    .line 603
    .local v1, countComplex:I
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v4

    .line 604
    .local v4, hasSymbol:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v0, v8, v1, v4}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 617
    .end local v0           #computedQuality:I
    .end local v1           #countComplex:I
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #hasSymbol:Z
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 619
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to save lock pattern to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    array-length v9, v5

    invoke-virtual {v7, v5, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 620
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 622
    .local v6, ioe:Ljava/io/IOException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to save lock pattern to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v0       #computedQuality:I
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V

    goto/16 :goto_0

    .line 614
    .end local v0           #computedQuality:I
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;ZI)V
    .locals 23
    .parameter "password"
    .parameter "saveHistory"
    .parameter "quality"

    .prologue
    .line 728
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v19

    .line 731
    .local v19, hash:[B
    :try_start_0
    new-instance v21, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v6, "rw"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .local v21, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_3

    .line 735
    const-wide/16 v5, 0x0

    move-object/from16 v0, v21

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 739
    :goto_0
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->close()V

    .line 742
    if-eqz p2, :cond_2

    .line 745
    const/16 v16, -0x1

    .line 746
    .local v16, existingPwdId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v13

    .line 747
    .local v13, convertedStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password like \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 755
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 756
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 757
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 760
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 761
    const/4 v11, 0x0

    .line 766
    :cond_1
    const/4 v5, -0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 767
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .local v22, values:Landroid/content/ContentValues;
    const-string v5, "password"

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v5, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 796
    .end local v11           #c:Landroid/database/Cursor;
    .end local v13           #convertedStr:Ljava/lang/String;
    .end local v16           #existingPwdId:I
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v15

    .line 797
    .local v15, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_6

    .line 798
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v12

    .line 799
    .local v12, computedQuality:I
    const-string v5, "lockscreen.password_type"

    int-to-long v6, v12

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 800
    if-eqz v12, :cond_5

    .line 802
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v14

    .line 803
    .local v14, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v18

    .line 804
    .local v18, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, v15

    move v1, v12

    move v2, v5

    move v3, v14

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V

    .line 824
    .end local v12           #computedQuality:I
    .end local v14           #countComplex:I
    .end local v15           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v18           #hasSymbol:Z
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    :goto_2
    return-void

    .line 737
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 817
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 819
    .local v17, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 779
    .end local v17           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v13       #convertedStr:Ljava/lang/String;
    .restart local v16       #existingPwdId:I
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 780
    .restart local v22       #values:Landroid/content/ContentValues;
    const-string v5, "password"

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string/jumbo v5, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 820
    .end local v11           #c:Landroid/database/Cursor;
    .end local v13           #convertedStr:Ljava/lang/String;
    .end local v16           #existingPwdId:I
    .end local v21           #raf:Ljava/io/RandomAccessFile;
    .end local v22           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    move-object/from16 v20, v5

    .line 822
    .local v20, ioe:Ljava/io/IOException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 809
    .end local v20           #ioe:Ljava/io/IOException;
    .restart local v12       #computedQuality:I
    .restart local v15       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #raf:Ljava/io/RandomAccessFile;
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v15, v5, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V

    goto/16 :goto_2

    .line 814
    .end local v12           #computedQuality:I
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v15, v5, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v10, "Unable to save lock pattern to "

    const-string v9, "LockPatternUtils"

    .line 482
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 485
    .local v2, hash:[B
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 488
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 492
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 494
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1

    .line 495
    const-string v5, "lockscreen.patterneverchosen"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 496
    const-string v5, "lockscreen.password_type"

    const-wide/32 v6, 0x10000

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 497
    const/high16 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V

    .line 510
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 490
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 503
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 505
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 500
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 506
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 508
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save lock pattern to "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public savedPasswordExists()Z
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->nonEmptyFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savedPasswordHistoryExists()Z
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->nonEmptyFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->nonEmptyFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savedRecoveryPasswordExists()Z
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->nonEmptyFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceLockEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1085
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceLockEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const-string v0, "devicelock_pattern_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1087
    return-void
.end method

.method public setDeviceLockITPolicyEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1090
    const-string v0, "devicelock_itpolicy_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1091
    return-void
.end method

.method public setDeviceLockSetTime(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "devicelock_itpolicy_settime"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1098
    return-void
.end method

.method public setLockConfig(I)V
    .locals 3
    .parameter "lockscreenType"

    .prologue
    .line 1303
    const-string v0, "4DMECH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LockPatternUtils.setLockConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lockscreen_type_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1305
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 972
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 973
    return-void
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 1020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1021
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1022
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1057
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1058
    return-void
.end method

.method public setSimLockedComplete()V
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSimLockPrepared:Z

    .line 1177
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1011
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1012
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 986
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 987
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 1258
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 1260
    .local v1, newState:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1262
    const v3, 0x104036a

    .line 1263
    .local v3, textId:I
    const v2, 0x1080084

    .line 1264
    .local v2, phoneCallIcon:I
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1270
    .end local v2           #phoneCallIcon:I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1271
    return-void

    .line 1266
    .end local v3           #textId:I
    :cond_0
    const v3, 0x1040369

    .line 1267
    .restart local v3       #textId:I
    const v0, 0x108019f

    .line 1268
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public verifyPasswordHistory(Ljava/lang/String;)Z
    .locals 13
    .parameter "pwd"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v7

    .line 208
    .local v7, checkHistory:I
    if-gtz v7, :cond_0

    move v0, v11

    .line 235
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    .line 212
    .local v10, hash:[B
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, convertedStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "password"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_date IS NOT NULL ORDER BY set_date DESC LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 224
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, existingPwd:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 229
    goto :goto_0

    .line 232
    .end local v9           #existingPwd:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 233
    const/4 v6, 0x0

    :cond_3
    move v0, v11

    .line 235
    goto :goto_0
.end method
