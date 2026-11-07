.class public final Lgbsdk/common/host/abzr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbsdk/common/host/abvl$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzr;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic aMI:Ljava/lang/StringBuffer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lgbsdk/common/host/abzr$1;->a:Ljava/io/File;

    iput-object p2, p0, Lgbsdk/common/host/abzr$1;->b:Ljava/lang/String;

    iput p3, p0, Lgbsdk/common/host/abzr$1;->c:I

    iput-object p4, p0, Lgbsdk/common/host/abzr$1;->aMI:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 80
    iget-object v0, p0, Lgbsdk/common/host/abzr$1;->a:Ljava/io/File;

    iget-object v1, p0, Lgbsdk/common/host/abzr$1;->b:Ljava/lang/String;

    iget v2, p0, Lgbsdk/common/host/abzr$1;->c:I

    iget-object v3, p0, Lgbsdk/common/host/abzr$1;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abzr;->d(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    return-void
.end method
