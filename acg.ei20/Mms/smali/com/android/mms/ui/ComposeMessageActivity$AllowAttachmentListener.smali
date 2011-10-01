.class Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowAttachmentListener"
.end annotation


# instance fields
.field private mAppend:Z

.field private mDataUri:Landroid/net/Uri;

.field private mMediaType:Ljava/lang/String;

.field private mReqCode:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter
    .parameter "mediaType"
    .parameter "dataUri"
    .parameter "reqCode"
    .parameter "append"

    .prologue
    .line 4593
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4594
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    .line 4595
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    .line 4596
    iput p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mReqCode:I

    .line 4597
    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mAppend:Z

    .line 4598
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 4582
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f090108

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4583
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mAppend:Z

    invoke-static {v0, v1, v2, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V

    .line 4591
    :cond_0
    :goto_0
    return-void

    .line 4584
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f090109

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4585
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mAppend:Z

    invoke-static {v0, v1, v2, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7700(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 4586
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f090107

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mAppend:Z

    invoke-static {v0, v1, v2, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 4588
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f09019a

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4589
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mAppend:Z

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$AllowAttachmentListener;->mReqCode:I

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZI)V

    goto :goto_0
.end method
