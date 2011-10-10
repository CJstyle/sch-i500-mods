.class Lcom/android/mms/ui/SlideEditorActivity$4;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 398
    return-void
.end method
