.class Lcom/android/mms/ui/ManageSimMessages$2;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 239
    if-eqz p3, :cond_0

    .line 240
    const v1, 0x7f090030

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 242
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    .line 244
    .local v0, l:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;
    const v1, 0x7f0900dd

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 246
    const/4 v1, 0x1

    const v2, 0x7f0900df

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1, p1}, Lcom/android/mms/ui/ManageSimMessages;->access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    .line 257
    .end local v0           #l:Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0
.end method
