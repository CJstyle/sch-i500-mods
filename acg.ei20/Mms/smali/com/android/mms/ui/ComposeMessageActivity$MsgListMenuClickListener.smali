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
    .line 1888
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1888
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

    .line 1891
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1892
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v8

    iget v9, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1895
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 1896
    :cond_0
    const-string v8, "Mms/compose"

    const-string v9, "onMenuItemClick Bad cursor."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 2001
    :goto_0
    return v8

    .line 1899
    :cond_1
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1900
    .local v7, type:Ljava/lang/String;
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1901
    .local v4, msgId:J
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v7, v4, v5, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 1903
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_2

    move v8, v10

    .line 1904
    goto :goto_0

    .line 1907
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move v8, v10

    .line 2001
    goto :goto_0

    .line 1909
    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1910
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    move v8, v11

    .line 1911
    goto :goto_0

    .line 1914
    :pswitch_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    move v8, v11

    .line 1915
    goto :goto_0

    .line 1918
    :pswitch_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    move v8, v11

    .line 1919
    goto :goto_0

    .line 1925
    :pswitch_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    move v8, v11

    .line 1927
    goto :goto_0

    .line 1930
    :pswitch_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    move v8, v11

    .line 1931
    goto :goto_0

    .line 1934
    :pswitch_6
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9, v12, v10}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    move v8, v11

    .line 1936
    goto :goto_0

    .line 1939
    :pswitch_7
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v9, v6, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-static {v8, v0, v9}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 1941
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

    .line 1947
    goto :goto_0

    .line 1950
    .end local v3           #messageDetails:Ljava/lang/String;
    :pswitch_8
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-boolean v10, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v2, v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 1952
    .local v2, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v9, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v8, v2, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V

    move v8, v11

    .line 1953
    goto/16 :goto_0

    .line 1956
    .end local v2           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :pswitch_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v4, v5, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4500(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    move v8, v11

    .line 1957
    goto/16 :goto_0

    .line 1960
    :pswitch_a
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    move v8, v11

    .line 1961
    goto/16 :goto_0

    .line 1965
    :pswitch_b
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8, v6, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    move v8, v11

    .line 1966
    goto/16 :goto_0

    .line 1970
    :pswitch_c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityInActivity(Landroid/content/Intent;)V

    move v8, v11

    .line 1971
    goto/16 :goto_0

    .line 1994
    :pswitch_d
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, v9, v11, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    move v8, v11

    .line 1995
    goto/16 :goto_0

    .line 1907
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method
