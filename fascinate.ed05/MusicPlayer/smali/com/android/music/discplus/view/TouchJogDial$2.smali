.class Lcom/android/music/discplus/view/TouchJogDial$2;
.super Ljava/lang/Object;
.source "TouchJogDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/TouchJogDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/TouchJogDial;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/TouchJogDial;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iget-object v6, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 718
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 720
    .local v10, typeIndexDataInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    iget-boolean v0, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$200(Lcom/android/music/discplus/view/TouchJogDial;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v1}, Lcom/android/music/discplus/view/TouchJogDial;->access$200(Lcom/android/music/discplus/view/TouchJogDial;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gt v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    move-object v10, v0

    .line 727
    :goto_1
    if-eqz v10, :cond_0

    .line 731
    iget v4, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    .line 732
    .local v4, startDegree:F
    iget v5, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 733
    .local v5, endDegree:F
    iget v2, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorStartPosition:I

    .line 734
    .local v2, cursorStartPosition:I
    iget v3, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorEndPosition:I

    .line 735
    .local v3, cursorEndPosition:I
    iget-object v8, v10, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    .line 737
    .local v8, focuedIndex:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static/range {v0 .. v5}, Lcom/android/music/discplus/view/TouchJogDial;->access$400(Lcom/android/music/discplus/view/TouchJogDial;IIIFF)I

    move-result v9

    .line 741
    .local v9, nowPosition:I
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0, v9, v6, v8}, Lcom/android/music/discplus/view/TouchJogDial;->access$500(Lcom/android/music/discplus/view/TouchJogDial;ILandroid/database/Cursor;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$000(Lcom/android/music/discplus/view/TouchJogDial;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    goto/16 :goto_0

    .line 720
    .end local v2           #cursorStartPosition:I
    .end local v3           #cursorEndPosition:I
    .end local v4           #startDegree:F
    .end local v5           #endDegree:F
    .end local v8           #focuedIndex:Ljava/lang/String;
    .end local v9           #nowPosition:I
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v0}, Lcom/android/music/discplus/view/TouchJogDial;->access$100(Lcom/android/music/discplus/view/TouchJogDial;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/discplus/view/TouchJogDial$2;->this$0:Lcom/android/music/discplus/view/TouchJogDial;

    invoke-static {v1}, Lcom/android/music/discplus/view/TouchJogDial;->access$200(Lcom/android/music/discplus/view/TouchJogDial;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/discplus/data/DiscPlusListInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    goto :goto_1

    .line 722
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 723
    .local v7, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/music/discplus/view/TouchJogDial;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IndexCycleCursorDataSet Runnable Execption : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v10, 0x0

    goto :goto_1
.end method
