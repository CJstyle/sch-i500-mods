.class Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "VolumeSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/widget/VolumeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/android/music/player/widget/VolumeSeekBar;


# direct methods
.method constructor <init>(Lcom/android/music/player/widget/VolumeSeekBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->this$0:Lcom/android/music/player/widget/VolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput p2, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mId:I

    .line 332
    iput p3, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mProgress:I

    .line 334
    iput-boolean p4, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mFromUser:Z

    .line 336
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->this$0:Lcom/android/music/player/widget/VolumeSeekBar;

    iget v1, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mFromUser:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/widget/VolumeSeekBar;->doRefreshProgress(IIZ)V

    .line 344
    iget-object v0, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->this$0:Lcom/android/music/player/widget/VolumeSeekBar;

    iput-object p0, v0, Lcom/android/music/player/widget/VolumeSeekBar;->mRefreshProgressRunnable:Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;

    .line 346
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 352
    iput p1, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mId:I

    .line 354
    iput p2, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mProgress:I

    .line 356
    iput-boolean p3, p0, Lcom/android/music/player/widget/VolumeSeekBar$RefreshProgressRunnable;->mFromUser:Z

    .line 358
    return-void
.end method
