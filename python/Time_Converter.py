def convert_minutes(minutes):
    hours = minutes // 60
    mins = minutes % 60

    if hours > 0 and mins > 0:
        return f"{hours} hr{'s' if hours > 1 else ''} {mins} minutes"
    elif hours > 0:
        return f"{hours} hr{'s' if hours > 1 else ''}"
    else:
        return f"{mins} minutes"

print(convert_minutes(int(input())))
print(convert_minutes(int(input())))