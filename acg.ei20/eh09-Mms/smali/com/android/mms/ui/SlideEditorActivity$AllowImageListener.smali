.class Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowImageListener"
.end annotation


# instance fields
.field mRequestCode:I

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;I)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "requestCode"

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput-object p2, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mUri:Landroid/net/Uri;

    .line 1225
    iput p3, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    .line 1226
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1230
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1232
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;Z)V

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1234
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1236
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mRequestCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1237
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$2000(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;Z)V

    goto :goto_0
.end method
