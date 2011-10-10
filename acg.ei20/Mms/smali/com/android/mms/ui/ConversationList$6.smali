.class Lcom/android/mms/ui/ConversationList$6;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 704
    move-object v0, p3

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 707
    .local v3, info:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;
    iget v5, v3, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->position:I

    if-gtz v5, :cond_1

    .line 777
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 710
    .restart local p0
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/nemustech/tiffany/widget/TFListView;

    move-result-object v5

    iget v6, v3, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 712
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-ltz v5, :cond_0

    .line 715
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5, v2}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 716
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 760
    .local v4, recipients:Lcom/android/mms/data/ContactList;
    const-string v5, ","

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 762
    iget v5, v3, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->position:I

    if-lez v5, :cond_0

    .line 766
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v5

    if-nez v5, :cond_2

    .line 768
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 769
    const/4 v5, 0x2

    const v6, 0x7f09007d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 774
    :cond_2
    :goto_1
    const v5, 0x7f09000b

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 770
    :cond_3
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 771
    const/4 v5, 0x3

    const v6, 0x7f09007e

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method
