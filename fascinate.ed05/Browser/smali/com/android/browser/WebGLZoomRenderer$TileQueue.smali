.class Lcom/android/browser/WebGLZoomRenderer$TileQueue;
.super Ljava/lang/Object;
.source "WebGLZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebGLZoomRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TileQueue"
.end annotation


# instance fields
.field mEnd:I

.field mSize:I

.field mStart:I

.field mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

.field final synthetic this$0:Lcom/android/browser/WebGLZoomRenderer;


# direct methods
.method constructor <init>(Lcom/android/browser/WebGLZoomRenderer;I)V
    .locals 4
    .parameter
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 928
    iput-object p1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    new-array v1, p2, [Lcom/android/browser/WebGLZoomRenderer$Tile;

    iput-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

    .line 930
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 931
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

    new-instance v2, Lcom/android/browser/WebGLZoomRenderer$Tile;

    invoke-direct {v2, p1}, Lcom/android/browser/WebGLZoomRenderer$Tile;-><init>(Lcom/android/browser/WebGLZoomRenderer;)V

    aput-object v2, v1, v0

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_0
    iput v3, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    .line 933
    iput v3, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    .line 934
    iput p2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mSize:I

    .line 935
    return-void
.end method


# virtual methods
.method declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 987
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mSize:I

    if-ge v0, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/browser/WebGLZoomRenderer$Tile;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    :cond_0
    monitor-exit p0

    return-void

    .line 987
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getNextTile()Lcom/android/browser/WebGLZoomRenderer$Tile;
    .locals 3

    .prologue
    .line 939
    monitor-enter p0

    const/4 v0, 0x0

    .line 941
    .local v0, tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :try_start_0
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mSize:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    if-eq v1, v2, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    aget-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 947
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized pop()Lcom/android/browser/WebGLZoomRenderer$Tile;
    .locals 3

    .prologue
    .line 966
    monitor-enter p0

    const/4 v0, 0x0

    .line 967
    .local v0, tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :try_start_0
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    if-eq v1, v2, :cond_0

    .line 969
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    aget-object v0, v1, v2

    .line 971
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mSize:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 976
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized push(Lcom/android/browser/WebGLZoomRenderer$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mSize:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    if-eq v0, v1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mTiles:[Lcom/android/browser/WebGLZoomRenderer$Tile;

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    aput-object p1, v0, v1

    .line 955
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    monitor-exit p0

    return-void

    .line 959
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/browser/WebGLZoomRenderer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push tile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WebGLZoomView push tile failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .locals 1

    .prologue
    .line 981
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mStart:I

    .line 982
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->mEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    monitor-exit p0

    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
