.class Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;
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
    name = "CreationOkListener"
.end annotation


# instance fields
.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSubject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "sendReq"
    .parameter "subject"

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1860
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1861
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 1862
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->mSubject:Ljava/lang/String;

    .line 1863
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CreationOkListener;->mSubject:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    .line 1857
    return-void
.end method
