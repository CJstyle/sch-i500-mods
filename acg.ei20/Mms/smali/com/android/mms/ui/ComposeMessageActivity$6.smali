.class Lcom/android/mms/ui/ComposeMessageActivity$6;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 1128
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/16 v4, 0x32

    const/4 v5, 0x0

    .line 1131
    if-eqz p3, :cond_1

    .line 1132
    check-cast p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    .end local p3
    iget-object v0, p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;->recipient:Lcom/android/mms/data/Contact;

    .line 1133
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    .line 1135
    .local v1, l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1136
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 1137
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1139
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1141
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1142
    const/16 v3, 0xc

    const v4, 0x7f09007d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1149
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1144
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1145
    const/16 v3, 0xd

    const v4, 0x7f09007e

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
