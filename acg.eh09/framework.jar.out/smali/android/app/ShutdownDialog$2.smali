.class Landroid/app/ShutdownDialog$2;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShutdownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 220
    const-string v1, "//data/local/tmp/"

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ShutdownDialog;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shutdown_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$900(Landroid/app/ShutdownDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/ShutdownDialog;->access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 224
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$900(Landroid/app/ShutdownDialog;)I

    move-result v1

    iget-object v2, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$1000(Landroid/app/ShutdownDialog;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 228
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$908(Landroid/app/ShutdownDialog;)I

    .line 230
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$1100(Landroid/app/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12c

    const-wide/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Landroid/app/ShutdownDialog$2;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
