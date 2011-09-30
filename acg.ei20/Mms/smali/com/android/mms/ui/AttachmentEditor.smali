.class public Lcom/android/mms/ui/AttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "AttachmentEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
    }
.end annotation


# instance fields
.field private mCanSend:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mSendButton:Landroid/widget/Button;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mView:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;
    .locals 5
    .parameter "stub_view_id"
    .parameter "real_view_id"
    .parameter "view_button_id"
    .parameter "replace_button_id"
    .parameter "remove_button_id"
    .parameter "view_message"
    .parameter "replace_message"
    .parameter "remove_message"

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 198
    .local v2, view:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 201
    .local v3, viewButton:Landroid/widget/Button;
    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 202
    .local v1, replaceButton:Landroid/widget/Button;
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 204
    .local v0, removeButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p6}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p7}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    invoke-direct {v4, p0, p8}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    check-cast v2, Lcom/android/mms/ui/SlideViewInterface;

    .end local v2           #view:Landroid/widget/LinearLayout;
    return-object v2
.end method

.method private createSlideshowView(Z)Lcom/android/mms/ui/SlideViewInterface;
    .locals 6
    .parameter "inPortrait"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    const v3, 0x7f08004c

    :goto_0
    if-eqz p1, :cond_1

    const v4, 0x7f0800c6

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 217
    .local v2, view:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 220
    .local v0, editBtn:Landroid/widget/Button;
    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    .line 221
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 222
    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 225
    .local v1, playBtn:Landroid/widget/ImageButton;
    new-instance v3, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v3, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    check-cast v2, Lcom/android/mms/ui/SlideViewInterface;

    .end local v2           #view:Landroid/widget/LinearLayout;
    return-object v2

    .line 212
    .end local v0           #editBtn:Landroid/widget/Button;
    .end local v1           #playBtn:Landroid/widget/ImageButton;
    :cond_0
    const v3, 0x7f080050

    goto :goto_0

    :cond_1
    const v4, 0x7f0800c0

    goto :goto_1
.end method

.method private createView()Lcom/android/mms/ui/SlideViewInterface;
    .locals 11

    .prologue
    const/16 v8, 0xa

    .line 148
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->inPortraitMode()Z

    move-result v9

    .line 149
    .local v9, inPortrait:Z
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 150
    invoke-direct {p0, v9}, Lcom/android/mms/ui/AttachmentEditor;->createSlideshowView(Z)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    .line 154
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    if-eqz v9, :cond_1

    const v0, 0x7f080049

    move v1, v0

    :goto_1
    if-eqz v9, :cond_2

    const v0, 0x7f08008b

    move v2, v0

    :goto_2
    const v3, 0x7f080089

    const v4, 0x7f08007e

    const v5, 0x7f08008a

    const/16 v6, 0x9

    const/4 v7, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f08004d

    move v1, v0

    goto :goto_1

    :cond_2
    const v0, 0x7f080087

    move v2, v0

    goto :goto_2

    .line 162
    :cond_3
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    if-eqz v9, :cond_4

    const v0, 0x7f08004a

    move v1, v0

    :goto_3
    if-eqz v9, :cond_5

    const v0, 0x7f0800da

    move v2, v0

    :goto_4
    const v3, 0x7f0800d7

    const v4, 0x7f0800d8

    const v5, 0x7f0800d9

    const/4 v6, 0x7

    const/4 v7, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto :goto_0

    :cond_4
    const v0, 0x7f08004e

    move v1, v0

    goto :goto_3

    :cond_5
    const v0, 0x7f0800d5

    move v2, v0

    goto :goto_4

    .line 170
    :cond_6
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    if-eqz v9, :cond_7

    const v0, 0x7f08004b

    move v1, v0

    :goto_5
    if-eqz v9, :cond_8

    const v0, 0x7f08000f

    move v2, v0

    :goto_6
    const v3, 0x7f08000c

    const v4, 0x7f08000d

    const v5, 0x7f08000e

    const/16 v6, 0x8

    const/4 v7, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIII)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f08004f

    move v1, v0

    goto :goto_5

    :cond_8
    const v0, 0x7f080007

    move v2, v0

    goto :goto_6

    .line 180
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getStubView(II)Landroid/view/View;
    .locals 2
    .parameter "stubId"
    .parameter "viewId"

    .prologue
    .line 125
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 128
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 131
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    return-object v1
.end method

.method private inPortraitMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 190
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .end local p0
    check-cast p0, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public setCanSend(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    if-eq v0, p1, :cond_0

    .line 106
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    .line 107
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 109
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 74
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 82
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getAttachmentType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getAttachmentType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->createView()Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/Presenter;->getModel()Lcom/android/mms/model/Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    :cond_2
    const-string v0, "MmsThumbnailPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->present(Z)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_1
.end method
