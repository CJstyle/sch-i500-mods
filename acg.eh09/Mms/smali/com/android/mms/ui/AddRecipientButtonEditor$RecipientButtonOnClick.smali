.class Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;
.super Ljava/lang/Object;
.source "AddRecipientButtonEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AddRecipientButtonEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientButtonOnClick"
.end annotation


# instance fields
.field private mWhat:I

.field final synthetic this$0:Lcom/android/mms/ui/AddRecipientButtonEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AddRecipientButtonEditor;I)V
    .locals 0
    .parameter
    .parameter "what"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;->this$0:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;->mWhat:I

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;->this$0:Lcom/android/mms/ui/AddRecipientButtonEditor;

    invoke-static {v1}, Lcom/android/mms/ui/AddRecipientButtonEditor;->access$000(Lcom/android/mms/ui/AddRecipientButtonEditor;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/AddRecipientButtonEditor$RecipientButtonOnClick;->mWhat:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    return-void
.end method
