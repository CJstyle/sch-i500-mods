.class Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;

.field final synthetic val$attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic val$selectPosition:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5587
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;->val$selectPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 5590
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;->val$selectPosition:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/AttachmentModel;I)V

    .line 5591
    return-void
.end method
