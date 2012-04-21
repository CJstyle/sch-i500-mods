.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;
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
    .line 252
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    const/4 v1, 0x0

    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$102(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 256
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    const/4 v1, 0x4

    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v0, v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$002(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 258
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$5;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #calls: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->alertdialogRejectMessage()V
    invoke-static {v0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$200(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    .line 259
    return-void
.end method
