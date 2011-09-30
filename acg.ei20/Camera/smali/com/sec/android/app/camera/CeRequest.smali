.class public Lcom/sec/android/app/camera/CeRequest;
.super Ljava/lang/Object;
.source "CeRequest.java"


# static fields
.field private static mPool:[Lcom/sec/android/app/camera/CeRequest;


# instance fields
.field private mParam:Ljava/lang/Object;

.field private mRequest:I

.field public mReserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/app/camera/CeRequest;

    sput-object v0, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "request"
    .parameter "param"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 104
    iput p1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 105
    iput-object p2, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public static obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;
    .locals 4
    .parameter "request"
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, req:Lcom/sec/android/app/camera/CeRequest;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 86
    sget-object v2, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    aget-object v1, v2, v0

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/sec/android/app/camera/CeRequest;

    .end local v1           #req:Lcom/sec/android/app/camera/CeRequest;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/CeRequest;-><init>(ILjava/lang/Object;)V

    .line 89
    .restart local v1       #req:Lcom/sec/android/app/camera/CeRequest;
    iput-boolean v3, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 90
    sget-object v2, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    aput-object v1, v2, v0

    move-object v2, v1

    .line 100
    :goto_1
    return-object v2

    .line 93
    :cond_0
    iget-boolean v2, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    if-nez v2, :cond_1

    .line 94
    iput p0, v1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 95
    iput-object p1, v1, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 96
    iput-boolean v3, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    move-object v2, v1

    .line 97
    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    new-instance v2, Lcom/sec/android/app/camera/CeRequest;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/CeRequest;-><init>(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 121
    check-cast p1, Lcom/sec/android/app/camera/CeRequest;

    .end local p1
    iget v0, p1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    iget v1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    return v0
.end method
