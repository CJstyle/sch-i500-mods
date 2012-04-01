.class public Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;
.super Landroid/app/Activity;
.source "VideoListNoSdActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, "VideoListNoSdActivity"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    .line 30
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 126
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f020098

    const/4 v6, 0x1

    .line 35
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, i:Landroid/content/Intent;
    const-string v4, "type"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 41
    .local v3, type:I
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    const v4, 0x7f03000a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->setContentView(I)V

    .line 44
    const v4, 0x7f0a0020

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, tv:Landroid/widget/TextView;
    const v4, 0x7f0a001f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "shared"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const v4, 0x7f07003b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 49
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void

    .line 52
    :cond_1
    if-ne v3, v6, :cond_2

    .line 54
    const v4, 0x7f070037

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 55
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 57
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 59
    const v4, 0x7f070038

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v4, 0x7f020033

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 200
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v1, "VideoList_Restore"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->finish()V

    move v0, v3

    .line 204
    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x7f0a004c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    .line 156
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 158
    const/4 v3, 0x0

    .line 160
    .local v3, restoreCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 161
    .local v1, iAllListCnt:I
    const/4 v2, 0x0

    .line 163
    .local v2, iRestoreCnt:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    const-string v5, "onPrepareOptionsMenu() - mVideoDB is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 192
    :goto_0
    return v4

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorRestore()Landroid/database/Cursor;

    move-result-object v3

    .line 171
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 174
    :cond_1
    if-eqz v3, :cond_2

    .line 176
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 177
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareOptionsMenu() - restore list count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    move v4, v7

    .line 183
    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 187
    .local v0, i:Landroid/view/MenuInflater;
    if-lez v2, :cond_4

    .line 188
    const v4, 0x7f090003

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v7

    .line 190
    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    const-string v2, "initAdapter() - mCursor is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(II)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume :  mCursor is not 0!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->finish()V

    .line 106
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 116
    return-void
.end method
