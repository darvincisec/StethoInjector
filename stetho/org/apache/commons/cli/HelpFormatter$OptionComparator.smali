.class Lorg/apache/commons/cli/HelpFormatter$OptionComparator;
.super Ljava/lang/Object;
.source "HelpFormatter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/cli/HelpFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/cli/HelpFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/cli/HelpFormatter$1;

    .prologue
    .line 962
    invoke-direct {p0}, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 978
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/cli/Option;

    .local v0, "opt1":Lorg/apache/commons/cli/Option;
    move-object v1, p2

    .line 979
    check-cast v1, Lorg/apache/commons/cli/Option;

    .line 981
    .local v1, "opt2":Lorg/apache/commons/cli/Option;
    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
