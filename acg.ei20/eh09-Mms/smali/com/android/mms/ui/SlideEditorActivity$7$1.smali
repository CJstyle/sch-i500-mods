.class Lcom/android/mms/ui/SlideEditorActivity$7$1;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideEditorActivity$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$7$1;->this$1:Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$7$1;->this$1:Lcom/android/mms/ui/SlideEditorActivity$7;

    iget-object v0, v0, Lcom/android/mms/ui/SlideEditorActivity$7;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$108(Lcom/android/mms/ui/SlideEditorActivity;)I

    .line 449
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$7$1;->this$1:Lcom/android/mms/ui/SlideEditorActivity$7;

    iget-object v0, v0, Lcom/android/mms/ui/SlideEditorActivity$7;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 450
    return-void
.end method