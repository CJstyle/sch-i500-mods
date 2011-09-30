.class Lcom/android/mms/ui/ComposeMessageActivity$27;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showChooseContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4088
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 4091
    return-void
.end method
