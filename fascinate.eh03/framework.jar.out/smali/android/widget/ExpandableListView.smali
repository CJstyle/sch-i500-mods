.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$1;,
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 168
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 172
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 176
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 188
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 176
    :array_0
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 203
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 209
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 217
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 219
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 221
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 223
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 225
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1020
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1021
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1023
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 373
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v8, :cond_5

    .line 374
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 376
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v4, v5, :cond_2

    :cond_0
    move v1, v7

    .line 383
    .local v1, isEmpty:Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    :goto_1
    if-eqz v1, :cond_4

    move v5, v8

    :goto_2
    or-int v3, v4, v5

    .line 386
    .local v3, stateSetIndex:I
    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 400
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move v1, v6

    .line 380
    goto :goto_0

    .restart local v1       #isEmpty:Z
    :cond_3
    move v4, v6

    .line 383
    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    .line 389
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 391
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v4, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    move-object v2, v4

    .line 396
    .local v2, stateSet:[I
    :goto_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3

    .line 393
    .end local v2           #stateSet:[I
    :cond_6
    sget-object v4, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    move-object v2, v4

    goto :goto_4
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v2, -0x1

    .line 948
    cmp-long v0, p0, v5

    if-nez v0, :cond_0

    move v0, v2

    .line 953
    :goto_0
    return v0

    .line 951
    :cond_0
    and-long v0, p0, v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 953
    :cond_1
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 973
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 988
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 929
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 931
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 909
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 910
    const/4 v0, 0x2

    .line 913
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 521
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 522
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 655
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 657
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 661
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 994
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1008
    :goto_0
    return-object v0

    .line 999
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1000
    .local v6, adjustedPosition:I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1001
    .local v7, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1002
    .local v8, pos:Landroid/widget/ExpandableListPosition;
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1004
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1005
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1006
    .local v2, packedPosition:J
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1008
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 234
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const/16 v19, 0x0

    .line 243
    .local v19, save2:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v26, v0

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v26, v0

    if-eqz v26, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getExcessScrollRecoverEffect()I

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v26

    if-lez v26, :cond_6

    const/16 v26, 0x1

    move/from16 v24, v26

    .line 245
    .local v24, shiftAll:Z
    :goto_1
    if-eqz v24, :cond_3

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 249
    .local v11, i:Landroid/view/animation/Interpolator;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move v10, v0

    .line 250
    .local v10, height:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v10

    move-object v0, v11

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v26

    mul-float v26, v26, v10

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 253
    .local v23, shift:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v26, v0

    if-gez v26, :cond_2

    .line 254
    mul-int/lit8 v23, v23, -0x1

    .line 256
    :cond_2
    const/16 v26, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    .end local v10           #height:F
    .end local v11           #i:Landroid/view/animation/Interpolator;
    .end local v23           #shift:I
    :cond_3
    const/16 v20, 0x0

    .line 261
    .local v20, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x22

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v26, 0x1

    move/from16 v8, v26

    .line 262
    .local v8, clipToPadding:Z
    :goto_2
    if-eqz v8, :cond_4

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    .line 265
    .local v21, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    .line 266
    .local v22, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    add-int v27, v27, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v28, v0

    add-int v28, v28, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 271
    .end local v21           #scrollX:I
    .end local v22           #scrollY:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 273
    .local v9, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v27

    sub-int v26, v26, v27

    sub-int v26, v26, v9

    const/16 v27, 0x1

    sub-int v15, v26, v27

    .line 275
    .local v15, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    .line 283
    .local v17, myB:I
    const/16 v16, -0x4

    .line 285
    .local v16, lastItemType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object v13, v0

    .line 290
    .local v13, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v6

    .line 291
    .local v6, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v7, v26, v9

    .local v7, childFlPos:I
    :goto_3
    if-ge v11, v6, :cond_9

    .line 294
    if-gez v7, :cond_8

    .line 292
    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 243
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v11           #i:I
    .end local v13           #indicatorRect:Landroid/graphics/Rect;
    .end local v15           #lastChildFlPos:I
    .end local v16           #lastItemType:I
    .end local v17           #myB:I
    .end local v20           #saveCount:I
    .end local v24           #shiftAll:Z
    :cond_6
    const/16 v26, 0x0

    move/from16 v24, v26

    goto/16 :goto_1

    .line 261
    .restart local v20       #saveCount:I
    .restart local v24       #shiftAll:Z
    :cond_7
    const/16 v26, 0x0

    move/from16 v8, v26

    goto/16 :goto_2

    .line 297
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v11       #i:I
    .restart local v13       #indicatorRect:Landroid/graphics/Rect;
    .restart local v15       #lastChildFlPos:I
    .restart local v16       #lastItemType:I
    .restart local v17       #myB:I
    :cond_8
    if-le v7, v15, :cond_b

    .line 351
    :cond_9
    if-eqz v8, :cond_a

    .line 352
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 356
    :cond_a
    if-eqz v24, :cond_0

    .line 357
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 302
    :cond_b
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 303
    .local v14, item:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v25

    .line 304
    .local v25, t:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 307
    .local v5, b:I
    if-ltz v5, :cond_5

    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v18

    .line 314
    .local v18, pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    .line 315
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v26, v0

    :goto_5
    move/from16 v0, v26

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v26, v0

    :goto_6
    move/from16 v0, v26

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 325
    :goto_7
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v16, v0

    .line 328
    :cond_c
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 330
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 332
    move/from16 v0, v25

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 333
    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 340
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 341
    .local v12, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_d

    .line 343
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 344
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    .end local v12           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_4

    .line 316
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v26, v0

    goto :goto_5

    .line 318
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v26, v0

    goto :goto_6

    .line 321
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 335
    :cond_11
    move/from16 v0, v25

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 336
    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_8
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 417
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v3, p3, v5

    .line 421
    .local v3, flatListPosition:I
    if-ltz v3, :cond_4

    .line 422
    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 423
    .local v0, adjustedPosition:I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 425
    .local v4, pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v6, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v6, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v5, v6, :cond_3

    .line 428
    :cond_0
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 429
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/widget/ExpandableListView;->mClipChildDivider:Z

    .line 430
    .local v1, clip:Z
    if-nez v1, :cond_2

    .line 431
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 436
    :goto_0
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 437
    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 440
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 448
    .end local v0           #adjustedPosition:I
    .end local v1           #clip:Z
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    .end local v4           #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_1
    return-void

    .line 433
    .restart local v0       #adjustedPosition:I
    .restart local v1       #clip:Z
    .restart local v2       #divider:Landroid/graphics/drawable/Drawable;
    .restart local v4       #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 443
    .end local v1           #clip:Z
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 447
    .end local v0           #adjustedPosition:I
    .end local v4           #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_4
    invoke-super {p0, p1, p2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1
.end method

.method public expandGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 638
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->expandGroup(I)Z

    move-result v0

    .line 640
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 644
    :cond_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 473
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 6
    .parameter "flatListPosition"

    .prologue
    .line 767
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    const-wide v4, 0xffffffffL

    .line 775
    :goto_0
    return-wide v4

    .line 771
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 772
    .local v0, adjustedPosition:I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 773
    .local v3, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 774
    .local v1, packedPos:J
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    move-wide v4, v1

    .line 775
    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 790
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 792
    .local v1, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 793
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 794
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 821
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    .line 830
    :goto_0
    return-wide v3

    .line 823
    :cond_0
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 825
    .local v0, groupPos:I
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 827
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 830
    :cond_1
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 809
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 12
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 569
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 571
    .local v9, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 574
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 578
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 582
    const/4 v0, 0x1

    .line 627
    :goto_0
    return v0

    .line 586
    :cond_0
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 592
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 613
    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 625
    .local v10, returnValue:Z
    :goto_2
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    move v0, v10

    .line 627
    goto :goto_0

    .line 597
    .end local v10           #returnValue:Z
    :cond_2
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 601
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 605
    :cond_3
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 606
    .local v8, groupPos:I
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 608
    .local v7, groupFlatPos:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v11, v7, v0

    .line 609
    .local v11, shiftedGroupPosition:I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0, v11}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 616
    .end local v7           #groupFlatPos:I
    .end local v8           #groupPos:I
    .end local v11           #shiftedGroupPosition:I
    :cond_4
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_5

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 618
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    goto :goto_0

    .line 622
    :cond_5
    const/4 v10, 0x0

    .restart local v10       #returnValue:Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 896
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1167
    instance-of v2, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v2, :cond_1

    .line 1168
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    move-object v1, v0

    .line 1173
    .local v1, ss:Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1175
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1176
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v3, v1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1160
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1161
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 550
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 557
    :goto_0
    return v1

    .line 556
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 557
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 495
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 497
    if-eqz p1, :cond_0

    .line 499
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 505
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "childDivider"

    .prologue
    .line 411
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 412
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ExpandableListView;->mClipChildDivider:Z

    .line 413
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childIndicator"

    .prologue
    .line 1035
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1036
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1050
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1051
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1052
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "groupIndicator"

    .prologue
    .line 1063
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1064
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1078
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1079
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1080
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 749
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 750
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 722
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 723
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 679
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 680
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 697
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 698
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 487
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 860
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 862
    .local v1, elChildPos:Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 864
    .local v2, flatChildPos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 868
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 886
    :goto_0
    return v3

    .line 870
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 872
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 875
    if-nez v2, :cond_1

    .line 876
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    :cond_1
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 881
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 883
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 884
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 886
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 839
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 841
    .local v1, elGroupPos:Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 842
    .local v2, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 843
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 844
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 845
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 846
    return-void
.end method
