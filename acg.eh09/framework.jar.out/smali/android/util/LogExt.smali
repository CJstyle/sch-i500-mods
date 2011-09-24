.class public Landroid/util/LogExt;
.super Ljava/lang/Object;
.source "LogExt.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOGEXT_FILELOG_NAMESAPCE:Ljava/lang/String; = "gsm.flg."

.field public static final LOGEXT_NAMESAPCE:Ljava/lang/String; = "gsm.tag."

.field private static LOGEXT_NAMESAPCE_LENGTH:I = 0x0

.field private static LOGEXT_PROP_DEFAULT:Ljava/lang/String; = null

.field private static final PROPERTY_KEY_MAX:I = 0x20

.field private static final SDCARD_LOGGING:Z = true

.field public static final SUPRESS:I = 0xef

.field private static TAG:Ljava/lang/String; = null

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static tableFileLoggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/FileLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "gsm.tag."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/util/LogExt;->LOGEXT_NAMESAPCE_LENGTH:I

    .line 106
    const-string v0, "NONE"

    sput-object v0, Landroid/util/LogExt;->LOGEXT_PROP_DEFAULT:Ljava/lang/String;

    .line 111
    const-string v0, "LogExt"

    sput-object v0, Landroid/util/LogExt;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method private static FileLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "logTag"
    .parameter "msg"

    .prologue
    const-string v6, " FileLogger table size is "

    .line 384
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const/4 v1, 0x0

    .line 390
    .local v1, isSDCardLogging:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.flg."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/util/LogExt;->LOGEXT_PROP_DEFAULT:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, nStr:Ljava/lang/String;
    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 394
    if-eqz v1, :cond_3

    .line 397
    sget-object v3, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 399
    sget-object v3, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/util/FileLogger;

    invoke-direct {v5, p0}, Landroid/util/FileLogger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v3, Landroid/util/LogExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New FileLogger created for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FileLogger table size is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    sget-object v3, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FileLogger;

    .line 404
    .local v0, fl:Landroid/util/FileLogger;
    invoke-virtual {v0, p0, p1}, Landroid/util/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v0           #fl:Landroid/util/FileLogger;
    :cond_3
    sget-object v3, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    sget-object v3, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FileLogger;

    .line 413
    .restart local v0       #fl:Landroid/util/FileLogger;
    invoke-virtual {v0}, Landroid/util/FileLogger;->close()V

    .line 414
    sget-object v3, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v3, Landroid/util/LogExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileLogger removed for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FileLogger table size is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/util/LogExt;->tableFileLoggers:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 184
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 201
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 339
    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 356
    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "tr"

    .prologue
    .line 370
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 218
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 236
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 4
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Landroid/util/LogExt;->LOGEXT_NAMESAPCE_LENGTH:I

    add-int/2addr v2, v3

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    .line 302
    sget-object v2, Landroid/util/LogExt;->TAG:Ljava/lang/String;

    const-string v3, "Log tag exceeeds maximum length 23"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 312
    :goto_0
    return v2

    .line 306
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.tag."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/util/LogExt;->LOGEXT_PROP_DEFAULT:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, nStr:Ljava/lang/String;
    sget-object v2, Landroid/util/LogExt;->LOGEXT_PROP_DEFAULT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {v1}, Landroid/util/LogExt;->toLevel(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, currentSetLvl:I
    if-lt p1, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static toLevel(Ljava/lang/String;)I
    .locals 2
    .parameter "level"

    .prologue
    const/4 v1, 0x4

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 129
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 130
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 131
    goto :goto_0

    .line 132
    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 133
    :sswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 134
    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 135
    :sswitch_6
    const/16 v0, 0xef

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x44 -> :sswitch_1
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x53 -> :sswitch_6
        0x56 -> :sswitch_0
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 149
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 167
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 253
    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 270
    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {p0, p1}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 323
    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/LogExt;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/LogExt;->FileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
