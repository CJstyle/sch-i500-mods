.class Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;
.super Ljava/lang/Object;
.source "BookMarkDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->initGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "view"
    .parameter "event"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 v9, 0x0

    .line 305
    :goto_0
    return v9

    .line 215
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 216
    .local v7, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 217
    .local v8, y:I
    const/4 v4, -0x1

    .line 218
    .local v4, position:I
    const/4 v1, 0x0

    .line 220
    .local v1, checkbox:Landroid/widget/CheckBox;
    move-object v0, p1

    check-cast v0, Landroid/widget/GridView;

    move-object v3, v0

    .line 222
    .local v3, gridview:Landroid/widget/GridView;
    invoke-virtual {v3, v7, v8}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v9

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v4, v9, v10

    .line 223
    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 224
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->getCheckBox(Landroid/view/View;)Landroid/view/View;
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$100(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .end local v1           #checkbox:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 227
    .restart local v1       #checkbox:Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 230
    .local v5, time_info:J
    sget-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-nez v9, :cond_1

    .line 232
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->checkIdExist_RemoveIdList(J)Z

    move-result v9

    if-nez v9, :cond_5

    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 292
    .end local v5           #time_info:J
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 294
    .local v2, deelteCnt:I
    if-lez v2, :cond_8

    .line 296
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$500(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$500(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f020001

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 305
    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 226
    .end local v2           #deelteCnt:I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 239
    .restart local v5       #time_info:J
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v9, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 240
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I
    invoke-static {v9, v4}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$402(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)I

    .line 241
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$300(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CheckBox;->invalidate()V

    goto :goto_1

    .line 246
    :pswitch_1
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$400(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I

    move-result v9

    if-ne v9, v4, :cond_4

    .line 248
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 251
    sget-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->list:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_3
    invoke-virtual {v1}, Landroid/widget/CheckBox;->invalidate()V

    .line 254
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 255
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    const/4 v10, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$402(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)I

    .line 257
    :cond_4
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 266
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v9, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 267
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I
    invoke-static {v9, v4}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$402(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)I

    .line 268
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$300(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CheckBox;->invalidate()V

    goto/16 :goto_1

    .line 271
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$400(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I

    move-result v9

    if-ne v9, v4, :cond_7

    .line 273
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_6

    .line 276
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->deleteId_RemoveIdList(J)V

    .line 277
    :cond_6
    invoke-virtual {v1}, Landroid/widget/CheckBox;->invalidate()V

    .line 278
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 279
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    const/4 v10, -0x1

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$402(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)I

    .line 282
    :cond_7
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 301
    .end local v5           #time_info:J
    .restart local v2       #deelteCnt:I
    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$500(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$500(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f02002c

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
