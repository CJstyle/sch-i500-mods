.class Lcom/android/settings/MediaFormat$3;
.super Ljava/lang/Thread;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MediaFormat;->doFormat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    iput-object p2, p0, Lcom/android/settings/MediaFormat$3;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/settings/MediaFormat$3;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "MediaFormat"

    .line 146
    iget-object v2, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v2}, Lcom/android/settings/MediaFormat;->access$100(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v3}, Lcom/android/settings/MediaFormat;->access$000(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/MediaFormat$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/settings/MediaFormat$3;->val$extStoragePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V

    .line 151
    const-string v2, "MediaFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PATH = unmount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MediaFormat$3;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v2}, Lcom/android/settings/MediaFormat;->access$400(Lcom/android/settings/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v1, 0x1

    .line 155
    .local v1, sts:I
    iget-object v2, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v2, v1}, Lcom/android/settings/MediaFormat;->access$500(Lcom/android/settings/MediaFormat;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1           #sts:I
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaFormat"

    const-string v2, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v2}, Lcom/android/settings/MediaFormat;->access$400(Lcom/android/settings/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 163
    .restart local v1       #sts:I
    iget-object v2, p0, Lcom/android/settings/MediaFormat$3;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v2, v1}, Lcom/android/settings/MediaFormat;->access$500(Lcom/android/settings/MediaFormat;I)V

    goto :goto_0
.end method
