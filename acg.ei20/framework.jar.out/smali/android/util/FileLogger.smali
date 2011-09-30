.class public Landroid/util/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mLogWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "FileLogger"

    sput-object v0, Landroid/util/FileLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "fileLogTag"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 52
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/util/FileLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    :try_start_1
    iget-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    sget-object v1, Landroid/util/FileLogger;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized log(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "Exception"

    const-string v2, "Stack trace follows..."

    invoke-virtual {p0, v1, v2}, Landroid/util/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "prefix"
    .parameter "str"

    .prologue
    const/16 v8, 0xa

    .line 94
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 95
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 96
    .local v2, hr:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 97
    .local v3, min:I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 100
    .local v6, sec:I
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 101
    .local v5, sb:Ljava/lang/StringBuffer;
    const/16 v7, 0x5b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    if-ge v3, v8, :cond_0

    .line 105
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    if-ge v6, v8, :cond_1

    .line 109
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string/jumbo v7, "| "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, s:Ljava/lang/String;
    iget-object v7, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    .line 123
    :try_start_1
    iget-object v7, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v7, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 124
    iget-object v7, p0, Landroid/util/FileLogger;->mLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 127
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    sget-object v7, Landroid/util/FileLogger;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    .end local v0           #d:Ljava/util/Date;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #sec:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 130
    .restart local v0       #d:Ljava/util/Date;
    .restart local v2       #hr:I
    .restart local v3       #min:I
    .restart local v4       #s:Ljava/lang/String;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    .restart local v6       #sec:I
    :cond_3
    :try_start_3
    sget-object v7, Landroid/util/FileLogger;->TAG:Ljava/lang/String;

    const-string v8, "File already closed, FileWriter is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
