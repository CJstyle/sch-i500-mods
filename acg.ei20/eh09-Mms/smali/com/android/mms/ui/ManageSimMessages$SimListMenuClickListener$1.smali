.class Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

.field final synthetic val$messageIndexString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;->val$messageIndexString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;->val$messageIndexString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1000(Lcom/android/mms/ui/ManageSimMessages;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 284
    return-void
.end method