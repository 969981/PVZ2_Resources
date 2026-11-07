.class public Lgbsdk/common/host/abiz;
.super Ljava/lang/Object;
.source "DnsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abiz$ab;
    }
.end annotation


# instance fields
.field public oY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pa:Lgbsdk/common/host/abiz$ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abiz;->oY:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abiz;->oZ:Ljava/util/List;

    .line 20
    sget-object v0, Lgbsdk/common/host/abiz$ab;->pc:Lgbsdk/common/host/abiz$ab;

    iput-object v0, p0, Lgbsdk/common/host/abiz;->pa:Lgbsdk/common/host/abiz$ab;

    return-void
.end method
