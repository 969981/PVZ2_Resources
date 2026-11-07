.class public Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;
.super Ljava/lang/Object;
.source "EnhancedRobustUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meituan/robust/utils/EnhancedRobustUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CombineNeedThrowException"
.end annotation


# instance fields
.field public needToThrow:Z

.field public needToThrowException:Ljava/lang/Class;


# direct methods
.method public constructor <init>(ZLjava/lang/Class;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrow:Z

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrowException:Ljava/lang/Class;

    .line 189
    iput-boolean p1, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrow:Z

    .line 190
    iput-object p2, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrowException:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getNeedToThrowException()Ljava/lang/Class;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrowException:Ljava/lang/Class;

    return-object v0
.end method

.method public isNeedToThrow()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrow:Z

    return v0
.end method

.method public setNeedToThrow(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrow:Z

    return-void
.end method

.method public setNeedToThrowException(Ljava/lang/Class;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/meituan/robust/utils/EnhancedRobustUtils$CombineNeedThrowException;->needToThrowException:Ljava/lang/Class;

    return-void
.end method
