.class Lcom/android/mms/ui/SlideEditorActivity$6;
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
    .line 420
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$6;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$6;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$6;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$900(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/BasicSlideEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BasicSlideEditorView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$6;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$6;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SlideEditorActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$6$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideEditorActivity$6$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method
