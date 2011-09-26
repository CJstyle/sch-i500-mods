.class Lcom/android/mms/ui/SlideEditorActivity$3;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;


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
    .line 352
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 364
    :cond_0
    return-void
.end method

.method public onTextChangedToSlideShow(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 368
    return-void
.end method
