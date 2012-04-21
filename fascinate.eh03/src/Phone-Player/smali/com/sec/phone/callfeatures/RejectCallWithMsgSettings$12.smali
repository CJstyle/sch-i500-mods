.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$12;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 523
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$12;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$12;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$300(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$12;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v1, v1, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 526
    return-void
.end method
