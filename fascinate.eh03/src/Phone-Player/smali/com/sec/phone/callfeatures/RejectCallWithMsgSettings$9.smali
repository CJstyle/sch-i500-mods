.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$9;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 500
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$9;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$9;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #calls: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->saveRejectMessage()V
    invoke-static {v0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$900(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    .line 503
    return-void
.end method
