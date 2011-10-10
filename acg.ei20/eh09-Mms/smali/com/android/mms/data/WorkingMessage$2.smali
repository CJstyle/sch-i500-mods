.class Lcom/android/mms/data/WorkingMessage$2;
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

.field final synthetic val$msgText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$msgText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$msgText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    .line 1471
    return-void
.end method
