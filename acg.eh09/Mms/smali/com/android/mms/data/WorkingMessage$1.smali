.class Lcom/android/mms/data/WorkingMessage$1;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$1;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$1;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$1;->val$mmsUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$1;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p6, p0, Lcom/android/mms/data/WorkingMessage$1;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 1462
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$1;->val$mmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$1;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$1;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1463
    return-void
.end method
