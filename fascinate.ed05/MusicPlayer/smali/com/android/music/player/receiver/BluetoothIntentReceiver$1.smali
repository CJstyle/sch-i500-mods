.class Lcom/android/music/player/receiver/BluetoothIntentReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/receiver/BluetoothIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v12, :cond_2

    .line 56
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    .line 57
    .local v7, context:Landroid/content/Context;
    const/4 v6, 0x0

    .line 58
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 60
    .local v10, filePath:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 61
    .local v2, column:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?limit=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "is_sound = 0"

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 71
    :cond_0
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v11, i:Landroid/content/Intent;
    const/high16 v0, 0x1402

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    sput-boolean v12, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->mLaunched:Z

    .line 79
    if-eqz v10, :cond_4

    .line 80
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v8, currentFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const-string v0, "com.android.music/launchplayer"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v0, "musicplayer.action"

    const-string v1, "launchplayer"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v0, "musicplayer.from"

    const-string v1, "bluetooth.receiver"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/4 v8, 0x0

    .line 87
    invoke-virtual {v7, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-static {}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_LONGPRESS_TIMEOUT, currentFile.exists()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v2           #column:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #context:Landroid/content/Context;
    .end local v8           #currentFile:Ljava/io/File;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #i:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 67
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #context:Landroid/content/Context;
    .restart local v10       #filePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 68
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    invoke-static {}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: getLastPlayed file, SQLiteFullException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 95
    .restart local v2       #column:[Ljava/lang/String;
    .restart local v11       #i:Landroid/content/Intent;
    :cond_4
    const-class v0, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v11, v7, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    invoke-virtual {v7, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-static {}, Lcom/android/music/player/receiver/BluetoothIntentReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_LONGPRESS_TIMEOUT, currentFile.exists()==false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
