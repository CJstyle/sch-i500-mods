.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$11;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->alertdialogRejectMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;


# direct methods
.method constructor <init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$11;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$11;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$11;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$600(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v0, v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$002(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 518
    return-void

    .line 517
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
