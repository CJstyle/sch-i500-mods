.class public Lcom/sec/android/app/camera/widget/TwSideMenu;
.super Landroid/widget/LinearLayout;
.source "TwSideMenu.java"


# instance fields
.field private mBottomButtonBg:I

.field private mButtonRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/camera/widget/TwSelectButton;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwSelectButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mMidButtonBg:I

.field private mResourceData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mTopButtonBg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    .line 54
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwSideMenu:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, attr:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mTopButtonBg:I

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMidButtonBg:I

    .line 62
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mBottomButtonBg:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method public addSideMenuButton(ILandroid/widget/LinearLayout;)V
    .locals 8
    .parameter "menuid"
    .parameter "popupTextLayout"

    .prologue
    const/4 v7, 0x1

    .line 79
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    .line 81
    .local v4, resourceBundle:Lcom/sec/android/app/camera/SideMenuResourceBundle;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v1

    .line 82
    .local v1, dimmedImage:I
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v2

    .line 83
    .local v2, normalImage:I
    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v3

    .line 85
    .local v3, pressedImage:I
    new-instance v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;-><init>(Landroid/content/Context;III)V

    .line 87
    .local v0, button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addView(Landroid/view/View;)V

    .line 88
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->registerPopupTextLayout(Landroid/widget/LinearLayout;)V

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 94
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mTopButtonBg:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    .line 98
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getButtons()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void

    .line 96
    :cond_0
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMidButtonBg:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    goto :goto_0
.end method

.method public addSideMenuThumbButton(ILandroid/widget/LinearLayout;)V
    .locals 12
    .parameter "menuid"
    .parameter "popupTextLayout"

    .prologue
    .line 103
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    .line 105
    .local v5, resourceBundle:Lcom/sec/android/app/camera/SideMenuResourceBundle;
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v0

    .line 106
    .local v0, dimmedImage:I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v3

    .line 107
    .local v3, normalImage:I
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v4

    .line 109
    .local v4, pressedImage:I
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v7, thumbLayout:Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v8, thumbLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v6, Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v3, v4, v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;-><init>(Landroid/content/Context;III)V

    .line 116
    .local v6, thumb:Lcom/sec/android/app/camera/widget/TwSelectButton;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v9, thumbParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x2f

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    const/16 v10, 0xe

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 121
    invoke-virtual {v7, v6, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v1, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, frame:Landroid/widget/ImageView;
    const v10, 0x7f020041

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, frameParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x28

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    const/4 v10, 0x2

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 130
    invoke-virtual {v7, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    invoke-virtual {v6, p2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->registerPopupTextLayout(Landroid/widget/LinearLayout;)V

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 138
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mTopButtonBg:I

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    .line 142
    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getButtons()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void

    .line 140
    :cond_0
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMidButtonBg:I

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    goto :goto_0
.end method

.method public dimButton(IZ)V
    .locals 2
    .parameter "menuid"
    .parameter "dim"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDimmed(Z)V

    .line 198
    return-void
.end method

.method public getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 2
    .parameter "menu"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwImageButton;

    return-object p0
.end method

.method public initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter
    .parameter "touchListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;",
            "Landroid/view/View$OnTouchListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, resourceData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SideMenuResourceBundle;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    .line 69
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 70
    return-void
.end method

.method public resetPressedButtons()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public setBottomButton(I)V
    .locals 2
    .parameter "menuid"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mBottomButtonBg:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    .line 202
    return-void
.end method

.method public setButtonLocked()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDisabled(Z)V

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDisabled(Z)V

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public updateButtonImage(II)V
    .locals 5
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 194
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 185
    .local v0, button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setNormalImage(I)V

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedImage(I)V

    .line 188
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->refreshButtonImage()V

    goto :goto_0
.end method
