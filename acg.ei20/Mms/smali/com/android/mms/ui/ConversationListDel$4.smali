.class final Lcom/android/mms/ui/ConversationListDel$4;
.super Ljava/lang/Object;
.source "ConversationListDel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListDel;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDel$4;->val$listener:Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListDel$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDel$4;->val$listener:Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListDel$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 459
    return-void
.end method