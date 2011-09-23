.class public Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;
.super Landroid/app/Activity;
.source "FrequentGridDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;,
        Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field public static final FAVORITE_TAG:I = 0x1

.field static final FIRST_ARRAY:Ljava/lang/String; = "firstArray"

.field public static final FREQUENT_TAG:I = 0x2

.field public static final MAKE_LIST_FINISH:I = 0x1

.field public static final MAKE_LIST_FINISH2:I = 0x2

.field static final SECOND_ARRAY:Ljava/lang/String; = "secondArray"


# instance fields
.field private ROW_HEIGHT:I

.field private final WHICH_OP_ALL_DELTE:I

.field private final WHICH_OP_MULTI_DELETE:I

.field private deleteBtn:Landroid/widget/Button;

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private gvFirstGrid:Landroid/widget/GridView;

.field private gvSecondGrid:Landroid/widget/GridView;

.field mBundle:Landroid/os/Bundle;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private volatile mDone:Z

.field private mFavoCursor:Landroid/database/Cursor;

.field private mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

.field mFirstArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFreqCursor:Landroid/database/Cursor;

.field mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridlayout:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mHeaderSelectAll:Landroid/widget/LinearLayout;

.field private mIsFirstFrequent:Z

.field private mJustCreated:Z

.field private mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

.field mSecondArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tvFirstNoitem:Landroid/widget/TextView;

.field private tvFirstSeparator:Landroid/widget/TextView;

.field private tvSecondNoitem:Landroid/widget/TextView;

.field private tvSecondSeparator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mIsFirstFrequent:Z

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    .line 75
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->WHICH_OP_ALL_DELTE:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->WHICH_OP_MULTI_DELETE:I

    .line 78
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->ROW_HEIGHT:I

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mGridlayout:Landroid/widget/LinearLayout;

    .line 95
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstSeparator:Landroid/widget/TextView;

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondSeparator:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstNoitem:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondNoitem:Landroid/widget/TextView;

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mJustCreated:Z

    .line 187
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 235
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 593
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 717
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private setGridDeleteAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0, v4}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    .line 304
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 313
    return-void

    .line 306
    :cond_0
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    .line 307
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0, v4}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    goto :goto_0
.end method

.method private setItemsVisibility(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/GridView;)V
    .locals 5
    .parameter "Cnt"
    .parameter "text"
    .parameter "Noitem"
    .parameter "grid"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 790
    if-lez p1, :cond_0

    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, rowCount:I
    invoke-static {p1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getGridRowCount(I)I

    move-result v1

    .line 793
    invoke-virtual {p4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 794
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->ROW_HEIGHT:I

    mul-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 795
    invoke-virtual {p4, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    invoke-virtual {p4, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 797
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #rowCount:I
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 801
    invoke-virtual {p4, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAllCheckState()V
    .locals 9

    .prologue
    .line 265
    const/4 v4, 0x1

    .line 266
    .local v4, everyBodyIsOn:Z
    const/4 v3, 0x1

    .line 268
    .local v3, everyBodyIsOff:Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getCount()I

    move-result v1

    .line 269
    .local v1, dataCount1:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getCount()I

    move-result v2

    .line 271
    .local v2, dataCount2:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    or-int v7, v4, v3

    if-eqz v7, :cond_1

    .line 272
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    invoke-virtual {v7, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 273
    .local v6, item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v0

    .line 274
    .local v0, checked:Z
    if-nez v0, :cond_0

    .line 275
    const/4 v4, 0x0

    .line 271
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 282
    .end local v0           #checked:Z
    .end local v6           #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_3

    or-int v7, v4, v3

    if-eqz v7, :cond_3

    .line 283
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    invoke-virtual {v7, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 284
    .restart local v6       #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v0

    .line 285
    .restart local v0       #checked:Z
    if-nez v0, :cond_2

    .line 286
    const/4 v4, 0x0

    .line 282
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 290
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 293
    .end local v0           #checked:Z
    .end local v6           #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    if-eqz v3, :cond_4

    .line 296
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    :goto_4
    return-void

    .line 298
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->deleteBtn:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method private updateAllCheckStateAfterResume()V
    .locals 5

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, allChecked:Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v3, :cond_0

    .line 776
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v1

    .line 777
    .local v1, first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 778
    const/4 v0, 0x1

    .line 781
    .end local v1           #first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v3, :cond_1

    .line 782
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v2

    .line 783
    .local v2, second:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 784
    const/4 v0, 0x0

    .line 787
    .end local v2           #second:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 788
    return-void
.end method

.method private updateCursors()V
    .locals 9

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 327
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v3, "starred=1"

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 332
    const/4 v7, 0x0

    .line 333
    .local v7, frequentCnt:I
    const/4 v6, 0x0

    .line 335
    .local v6, favoriteCnt:I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 341
    :cond_3
    add-int v0, v6, v7

    if-nez v0, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->finish()V

    .line 344
    :cond_4
    const/4 v8, 0x0

    .line 346
    .local v8, rowCount:I
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstNoitem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setItemsVisibility(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/GridView;)V

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondNoitem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setItemsVisibility(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/GridView;)V

    .line 354
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mJustCreated:Z

    if-nez v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->changeCursor(Landroid/database/Cursor;I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->changeCursor(Landroid/database/Cursor;I)V

    .line 374
    :cond_5
    :goto_0
    return-void

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstNoitem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setItemsVisibility(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/GridView;)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondNoitem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setItemsVisibility(ILjava/lang/String;Landroid/widget/TextView;Landroid/widget/GridView;)V

    .line 367
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mJustCreated:Z

    if-nez v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFavoCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->changeCursor(Landroid/database/Cursor;I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFreqCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->changeCursor(Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method private updateDeleteButtonEnabled()V
    .locals 4

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, isHasChecked:Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v3, :cond_0

    .line 759
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 760
    .local v0, first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 761
    const/4 v1, 0x1

    .line 764
    .end local v0           #first:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v3, :cond_1

    .line 765
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v2

    .line 766
    .local v2, second:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 767
    const/4 v1, 0x1

    .line 770
    .end local v2           #second:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 771
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget-boolean v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->IS_QWERTY:Z

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setRequestedOrientation(I)V

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 116
    :cond_1
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setContentView(I)V

    .line 117
    const v3, 0x7f090037

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setTitle(I)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 120
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    .local v1, draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->ROW_HEIGHT:I

    .line 122
    const-string v3, "isFrequent"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mIsFirstFrequent:Z

    .line 123
    const v3, 0x7f0600c1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderSelectAll:Landroid/widget/LinearLayout;

    .line 124
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    .line 139
    .local v0, allCheckListener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v3, 0x7f0600c3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 142
    const v3, 0x7f0600cc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->deleteBtn:Landroid/widget/Button;

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mGridlayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 146
    const v3, 0x7f0600c5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mGridlayout:Landroid/widget/LinearLayout;

    .line 148
    const v3, 0x7f0600c6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstSeparator:Landroid/widget/TextView;

    .line 149
    const v3, 0x7f0600c9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondSeparator:Landroid/widget/TextView;

    .line 150
    const v3, 0x7f0600c8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    .line 151
    const v3, 0x7f0600cb

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    .line 152
    const v3, 0x7f0600c7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvFirstNoitem:Landroid/widget/TextView;

    .line 153
    const v3, 0x7f0600ca

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->tvSecondNoitem:Landroid/widget/TextView;

    .line 155
    :cond_2
    new-instance v3, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 163
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mJustCreated:Z

    .line 168
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getItemCheckedArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    .line 233
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "test"

    const-string v1, "onRestoreInstanceState(Bundle bundle)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v0, "firstArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    .line 262
    const-string v0, "secondArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "test"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->updateCursors()V

    .line 204
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setGridDeleteAdapter()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mJustCreated:Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->setItemChecked(Ljava/util/ArrayList;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->setItemChecked(Ljava/util/ArrayList;)V

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->updateDeleteButtonEnabled()V

    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->updateAllCheckStateAfterResume()V

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    const-string v0, "firstArray"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 248
    const-string v0, "secondArray"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 250
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 251
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 5
    .parameter "bCheckStatus"

    .prologue
    .line 170
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 171
    .local v0, dataCount1:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v1

    .line 172
    .local v1, dataCount2:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 173
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvFirstGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 174
    .local v3, item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v3, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->setChecked(Z)V

    .line 175
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mFirstAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v4, v2, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->setItemChecked(IZ)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v3           #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 179
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->gvSecondGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 180
    .restart local v3       #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v3, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->setChecked(Z)V

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mSecondAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    invoke-virtual {v4, v2, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->setItemChecked(IZ)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    .end local v3           #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method public showDeleteConfirmDlg(II)V
    .locals 3
    .parameter "msgId"
    .parameter "iOpIndex"

    .prologue
    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090022

    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 689
    return-void
.end method

.method public showProgress(I)V
    .locals 2
    .parameter "MaxCnt"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 715
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const v0, 0x7f09003f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->showDeleteConfirmDlg(II)V

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    const v0, 0x7f090041

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->showDeleteConfirmDlg(II)V

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->finish()V

    .line 622
    return-void
.end method
