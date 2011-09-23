.class Landroid/widget/CursorHandle$CursorHandleMenu;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorHandleMenu"
.end annotation


# instance fields
.field public mBtnCopy:Landroid/widget/ImageButton;

.field public mBtnCut:Landroid/widget/ImageButton;

.field public mBtnPaste:Landroid/widget/ImageButton;

.field public mBtnSearch:Landroid/widget/ImageButton;

.field public mBtnSelect:Landroid/widget/ImageButton;

.field public mBtnShare:Landroid/widget/ImageButton;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field public mCursorHandleMenuArrowDownView:Landroid/view/View;

.field public mCursorHandleMenuArrowUpView:Landroid/view/View;

.field public mCursorHandleMenuView:Landroid/view/View;

.field public mIsMenuShowing:Z

.field public mIsSelectingText:Z

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/widget/CursorHandle;


# direct methods
.method public constructor <init>(Landroid/widget/CursorHandle;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 930
    iput-object p1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 927
    iput-boolean v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 928
    iput-boolean v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    .line 931
    iput-object p2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    .line 932
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090086

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    .line 933
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090087

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowDownView:Landroid/view/View;

    .line 934
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090088

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowUpView:Landroid/view/View;

    .line 936
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    .line 937
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    .line 938
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    .line 939
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    .line 940
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    .line 941
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    .line 943
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSelect:Landroid/widget/ImageView;

    .line 944
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCopy:Landroid/widget/ImageView;

    .line 945
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCut:Landroid/widget/ImageView;

    .line 946
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitPaste:Landroid/widget/ImageView;

    .line 947
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSearch:Landroid/widget/ImageView;

    .line 949
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 950
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    .line 951
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    .line 953
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 954
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 955
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 957
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 958
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 959
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 961
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 962
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 963
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 965
    invoke-virtual {p0}, Landroid/widget/CursorHandle$CursorHandleMenu;->updateButtonVisibility()V

    .line 967
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    return-void
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .locals 5

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    .line 1139
    const/4 v0, 0x0

    .line 1141
    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    add-int/lit8 v0, v0, 0x31

    .line 1144
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1145
    add-int/lit8 v0, v0, 0x31

    .line 1147
    :cond_1
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1148
    add-int/lit8 v0, v0, 0x31

    .line 1150
    :cond_2
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1151
    add-int/lit8 v0, v0, 0x31

    .line 1153
    :cond_3
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1154
    add-int/lit8 v0, v0, 0x31

    .line 1156
    :cond_4
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1157
    add-int/lit8 v0, v0, 0x31

    .line 1160
    :cond_5
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1161
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42bfcccc

    invoke-virtual {p0, v2}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1163
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1164
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1166
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1167
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1168
    return-void
.end method

.method public convertDipToPixel(F)I
    .locals 5
    .parameter "dip"

    .prologue
    .line 1066
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1067
    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1068
    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    .line 1071
    :cond_0
    float-to-int v1, p1

    return v1
.end method

.method isThereAnyTextInClipboard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1126
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1127
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1128
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    const/4 v1, 0x1

    .line 1134
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_0
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_0
    move v1, v3

    .line 1131
    goto :goto_0

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_1
    move v1, v3

    .line 1134
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 977
    iget-object v5, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v5}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v5

    monitor-enter v5

    .line 978
    :try_start_0
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    if-ne p1, v6, :cond_0

    .line 980
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 981
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    const v7, 0x1020028

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 982
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 985
    :cond_0
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    if-ne p1, v6, :cond_1

    .line 987
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 988
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    const v7, 0x1020021

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 989
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 992
    :cond_1
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    if-ne p1, v6, :cond_2

    .line 994
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 995
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    const v7, 0x1020020

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 996
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 999
    :cond_2
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    if-ne p1, v6, :cond_3

    .line 1001
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 1002
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    const v7, 0x1020022

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 1003
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 1006
    :cond_3
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    if-ne p1, v6, :cond_5

    .line 1008
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 1009
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 1012
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 1013
    .local v3, selStart:I
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1014
    .local v2, selEnd:I
    if-le v3, v2, :cond_4

    .line 1016
    move v4, v3

    .line 1017
    .local v4, tmp:I
    move v3, v2

    .line 1018
    move v2, v4

    .line 1020
    .end local v4           #tmp:I
    :cond_4
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 1022
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 1023
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    const v7, 0x1020029

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 1026
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$1600(Landroid/widget/CursorHandle;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->showCursorHandleSearchDialog(Ljava/lang/String;)V

    .line 1029
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_5
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    if-ne p1, v6, :cond_7

    .line 1031
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 1032
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v6}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 1035
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 1036
    .restart local v3       #selStart:I
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1037
    .restart local v2       #selEnd:I
    if-le v3, v2, :cond_6

    .line 1039
    move v4, v3

    .line 1040
    .restart local v4       #tmp:I
    move v3, v2

    .line 1041
    move v2, v4

    .line 1043
    .end local v4           #tmp:I
    :cond_6
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 1045
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 1046
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v6}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v6

    const v7, 0x1020029

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 1048
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, intentShareText:Landroid/content/Intent;
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v7, 0x10404b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1055
    .local v0, intentChooser:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x1000

    or-int/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :try_start_1
    iget-object v6, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1062
    .end local v0           #intentChooser:Landroid/content/Intent;
    .end local v1           #intentShareText:Landroid/content/Intent;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_7
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 1063
    return-void

    .line 1062
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1058
    .restart local v0       #intentChooser:Landroid/content/Intent;
    .restart local v1       #intentShareText:Landroid/content/Intent;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public updateButtonVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1076
    iput v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1078
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1094
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1097
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1107
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1109
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorHandle$CursorHandleMenu;->isThereAnyTextInClipboard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1116
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1118
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1119
    :cond_2
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    :cond_3
    return-void
.end method
