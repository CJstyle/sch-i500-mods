.class Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3113
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v4, 0x12c

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v8, "MultiPlayer"

    .line 3115
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v5, v2, Lcom/android/music/player/service/CorePlayerService;->mResetForUlp:Z

    .line 3116
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2510(Lcom/android/music/player/service/CorePlayerService;)I

    .line 3117
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2, v5}, Lcom/android/music/player/service/CorePlayerService;->access$302(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 3120
    const/16 v2, 0x64

    if-ne p2, v2, :cond_0

    .line 3121
    const-string v2, "MultiPlayer"

    const-string v2, ">>>>>>>>MEDIA_ERROR_SERVER_DIED<<<<<<<<<<<<"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 3124
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v6, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3128
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2702(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3129
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v7, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3130
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v3, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3146
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2600(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2600(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v6

    .line 3211
    :goto_0
    return v2

    .line 3148
    :cond_0
    const/16 v2, 0x12d

    if-eq p2, v2, :cond_1

    const/16 v2, 0x12d

    if-ne p3, v2, :cond_2

    .line 3150
    :cond_1
    const-string v2, "MultiPlayer"

    const-string v2, ">>>>>>>>MEDIA_ErrDrmLicenseExpired<<<<<<<<<<<<"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 3152
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v6, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3153
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2702(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3154
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v7, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3155
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v3, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3156
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x12d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v6

    .line 3158
    goto :goto_0

    .line 3159
    :cond_2
    if-eq p2, v4, :cond_3

    if-ne p3, v4, :cond_4

    .line 3161
    :cond_3
    const-string v2, "MultiPlayer"

    const-string v2, ">>>>>>>>MEDIA_ErrDrmLicenseNotFound<<<<<<<<<<<<"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 3163
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v6, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3164
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2702(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3165
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v7, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3166
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v3, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3167
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v6

    .line 3169
    goto/16 :goto_0

    .line 3171
    :cond_4
    const-string v2, "MultiPlayer"

    const-string v2, "Error: Extra:%d,%d,%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/music/player/data/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v0, 0x0

    .line 3174
    .local v0, bIsTopActivity:Z
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 3175
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v6, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3176
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2702(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3177
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iput v7, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3178
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->access$2700(Lcom/android/music/player/service/CorePlayerService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2, v3, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3179
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService;->hideNotification()V

    .line 3181
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v2}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/music/common/util/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    .line 3182
    if-eqz v0, :cond_5

    .line 3183
    const/4 v1, -0x1

    .line 3184
    .local v1, errStrId:I
    const/4 v2, -0x4

    if-ne p2, v2, :cond_8

    .line 3185
    const v1, 0x7f0a0083

    .line 3192
    :goto_1
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3193
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(I)V

    .line 3197
    :goto_2
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2800(Lcom/android/music/player/service/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3200
    .end local v1           #errStrId:I
    :cond_5
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getItemCount()I

    move-result v2

    if-le v2, v6, :cond_7

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$2900(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3203
    :cond_6
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$3000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$FindSong;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3204
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$3000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$FindSong;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$2900(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v4}, Lcom/android/music/player/service/CorePlayerService;->access$3100(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/music/player/service/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 3205
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v3}, Lcom/android/music/player/service/CorePlayerService;->access$3000(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/service/CorePlayerService$FindSong;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3208
    :cond_7
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v3, "com.android.music.playstatechanged"

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;)V

    move v2, v5

    .line 3211
    goto/16 :goto_0

    .line 3186
    .restart local v1       #errStrId:I
    :cond_8
    const/16 v2, -0xa

    if-ne p2, v2, :cond_9

    .line 3187
    const v1, 0x7f0a0084

    goto/16 :goto_1

    .line 3189
    :cond_9
    const v1, 0x7f0a0042

    goto/16 :goto_1

    .line 3195
    :cond_a
    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v2, v2, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v3, p0, Lcom/android/music/player/service/CorePlayerService$MultiPlayer$2;->this$1:Lcom/android/music/player/service/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/android/music/player/service/CorePlayerService$MultiPlayer;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v3}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/player/service/CorePlayerService;->access$2802(Lcom/android/music/player/service/CorePlayerService;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto/16 :goto_2
.end method
