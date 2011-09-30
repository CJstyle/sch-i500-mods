.class final Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1892
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1895
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1896
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v8

    iget v9, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1899
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 1900
    :cond_0
    const-string v8, "Mms/compose"

    const-string v9, "onMenuItemClick Bad cursor."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 2009
    :goto_0
    return v8

    .line 1903
    :cond_1
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1904
    .local v7, type:Ljava/lang/String;
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1905
    .local v4, msgId:J
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v7, v4, v5, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 1907
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_2

    move v8, v10

    .line 1908
    goto :goto_0

    .line 1911
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    move v8, v10

    .line 2009
    goto :goto_0

    .line 1913
    :sswitch_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1914
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    move v8, v11

    .line 1915
    goto :goto_0

    .line 1918
    :sswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    move v8, v11

    .line 1919
    goto :goto_0

    .line 1922
    :sswitch_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    move v8, v11

    .line 1923
    goto :goto_0

    .line 1929
    :sswitch_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    move v8, v11

    .line 1931
    goto :goto_0

    .line 1934
    :sswitch_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    move v8, v11

    .line 1935
    goto :goto_0

    .line 1938
    :sswitch_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9, v12, v10}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    move v8, v11

    .line 1940
    goto :goto_0

    .line 1943
    :sswitch_6
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v9, v6, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-static {v8, v0, v9}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 1945
    .local v3, messageDetails:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0900c0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v8, v11

    .line 1951
    goto :goto_0

    .line 1954
    .end local v3           #messageDetails:Ljava/lang/String;
    :sswitch_7
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-boolean v10, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v2, v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 1956
    .local v2, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v9, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v8, v2, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4500(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V

    move v8, v11

    .line 1957
    goto/16 :goto_0

    .line 1960
    .end local v2           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :sswitch_8
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v4, v5, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    move v8, v11

    .line 1961
    goto/16 :goto_0

    .line 1964
    :sswitch_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    move v8, v11

    .line 1965
    goto/16 :goto_0

    .line 1969
    :sswitch_a
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    move v8, v11

    .line 1970
    goto/16 :goto_0

    .line 1974
    :sswitch_b
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityInActivity(Landroid/content/Intent;)V

    move v8, v11

    .line 1975
    goto/16 :goto_0

    .line 1998
    :sswitch_c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, v9, v11, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    move v8, v11

    .line 1999
    goto/16 :goto_0

    :sswitch_d
    move v8, v10

    .line 2005
    goto/16 :goto_0

    .line 1911
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_4
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1c -> :sswitch_9
        0x1d -> :sswitch_a
        0x1f -> :sswitch_3
        0x23 -> :sswitch_c
        0x28 -> :sswitch_b
        0x2d -> :sswitch_c
        0x34 -> :sswitch_d
    .end sparse-switch
.end method
