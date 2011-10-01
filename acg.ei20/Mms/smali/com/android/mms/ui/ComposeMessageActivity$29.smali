.class Lcom/android/mms/ui/ComposeMessageActivity$29;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$append:Z

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I

.field final synthetic val$reqCode:I

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4524
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$error:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$dataUri:Landroid/net/Uri;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$reqCode:I

    iput-boolean p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$append:Z

    iput-boolean p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$sendMultiple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4526
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4527
    .local v2, res:Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$mediaTypeStringId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4530
    .local v0, mediaType:Ljava/lang/String;
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$error:I

    packed-switch v4, :pswitch_data_0

    .line 4559
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$error:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4532
    :pswitch_0
    const v4, 0x7f0901c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4533
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4568
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4536
    :pswitch_1
    const v4, 0x7f0901c9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4537
    .local v3, title:Ljava/lang/String;
    const v4, 0x7f0901ca

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4562
    .restart local v1       #message:Ljava/lang/String;
    :goto_1
    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$sendMultiple:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4563
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v3, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7402(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0

    .line 4540
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f090053

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4541
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f0901cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4542
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 4544
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f090055

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4545
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f090056

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4546
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 4549
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_4
    const v4, 0x7f090061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4550
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f090062

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4551
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 4555
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_5
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$dataUri:Landroid/net/Uri;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$reqCode:I

    iget-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$append:Z

    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 4565
    .restart local v1       #message:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$sendMultiple:Z

    if-nez v4, :cond_0

    .line 4566
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v3, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4530
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
