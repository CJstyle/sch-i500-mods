.class Lcom/android/mms/ui/SlideEditorActivity$11;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


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
    .line 964
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;ZZ)V
    .locals 11
    .parameter "part"
    .parameter "append"
    .parameter "sendMultiple"

    .prologue
    const v10, 0x7f0901c8

    const/4 v9, 0x0

    .line 966
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 967
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 968
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v7, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1004
    :goto_0
    return-void

    .line 976
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1200(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 977
    .local v2, messageId:J
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 978
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v5, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 979
    .local v4, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;Z)V

    .line 981
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v7, 0x7f090073

    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 982
    .end local v2           #messageId:J
    .end local v4           #newUri:Landroid/net/Uri;
    .end local v5           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 983
    .local v1, e:Lcom/google/android/mms/MmsException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v7, "add picture failed"

    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 984
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v7, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 988
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 989
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0901c9

    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0901ca

    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 995
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f090055

    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f090056

    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 999
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f090053

    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0901cd

    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
