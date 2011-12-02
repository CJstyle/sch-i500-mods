.class Lcom/android/music/common/util/DrmServicePopup$2;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/DrmServicePopup;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/DrmServicePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/music/common/util/DrmServicePopup$2;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    .line 346
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeleteListener:onClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup$2;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v3}, Lcom/android/music/common/util/DrmServicePopup;->access$200(Lcom/android/music/common/util/DrmServicePopup;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    new-array v1, v6, [I

    .line 359
    .local v1, id:[I
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/common/util/DrmServicePopup$2;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v4}, Lcom/android/music/common/util/DrmServicePopup;->access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;

    move-result-object v4

    iget v4, v4, Lcom/android/music/common/util/DrmPopupData;->id:I

    aput v4, v1, v3

    .line 360
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 361
    .local v2, mDB:Lcom/android/music/common/data/MusicDB;
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup$2;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v3}, Lcom/android/music/common/util/DrmServicePopup;->access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/music/common/util/DrmPopupData;->mFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2, v3, v6, v1}, Lcom/android/music/common/data/MusicDB;->removeItems(Lcom/android/music/common/data/MpListFilter;I[I)I

    .line 365
    .end local v1           #id:[I
    .end local v2           #mDB:Lcom/android/music/common/data/MusicDB;
    :goto_0
    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup$2;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v3}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    .line 366
    return-void

    .line 363
    :cond_0
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Delete error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
