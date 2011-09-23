.class Landroid/database/sqlite/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"


# instance fields
.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/Throwable;

.field nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "sql"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 47
    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 50
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 54
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 57
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 63
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/database/sqlite/SQLiteCompiledSql;->compile(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method private compile(Ljava/lang/String;Z)V
    .locals 3
    .parameter "sql"
    .parameter "forceCompilation"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    .line 87
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 91
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 96
    :cond_1
    return-void

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method

.method private final native native_finalize()V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 127
    :goto_0
    monitor-exit p0

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 124
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from DB cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v0, v3

    .line 127
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const-string v1, "SQLiteCompiledSql"

    .line 143
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 154
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 156
    return-void

    .line 145
    :cond_0
    :try_start_1
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "SQLiteCompiledSql"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** warning ** Finalized DbObj (id#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 149
    .local v0, len:I
    const-string v1, "SQLiteCompiledSql"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v0, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    .end local v0           #len:I
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1

    .restart local v0       #len:I
    :cond_2
    move v5, v0

    .line 149
    goto :goto_1
.end method

.method declared-synchronized release()V
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Released DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") back to DB cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_1

    .line 102
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closed and deallocated DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 107
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->native_finalize()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 113
    :cond_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method
