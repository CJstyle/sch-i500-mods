.class Lcom/android/music/list/view/MpListGridView$EmptyAdapter;
.super Ljava/lang/Object;
.source "MpListGridView.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/MpListGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/MpListGridView;


# direct methods
.method private constructor <init>(Lcom/android/music/list/view/MpListGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/music/list/view/MpListGridView$EmptyAdapter;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/list/view/MpListGridView;Lcom/android/music/list/view/MpListGridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/music/list/view/MpListGridView$EmptyAdapter;-><init>(Lcom/android/music/list/view/MpListGridView;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 188
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 191
    return-void
.end method
