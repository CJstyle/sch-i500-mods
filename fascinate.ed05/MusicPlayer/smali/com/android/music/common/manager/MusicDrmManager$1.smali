.class Lcom/android/music/common/manager/MusicDrmManager$1;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"

# interfaces
.implements Landroid/drm/mobile2/OMADRMManager$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/manager/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/manager/MusicDrmManager;


# direct methods
.method constructor <init>(Lcom/android/music/common/manager/MusicDrmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/music/common/manager/MusicDrmManager$1;->this$0:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)Z
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 357
    invoke-static {}, Lcom/android/music/common/manager/MusicDrmManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/manager/MusicDrmManager$1;->this$0:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-static {v2}, Lcom/android/music/common/manager/MusicDrmManager;->access$100(Lcom/android/music/common/manager/MusicDrmManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    return v0
.end method
