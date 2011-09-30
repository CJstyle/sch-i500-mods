.class Lcom/android/mms/ui/SlideEditorActivity$14;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->showReplaceDialog(Z)V
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
    .line 1147
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1600(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/ReplaceSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;I)V

    .line 1150
    return-void
.end method
