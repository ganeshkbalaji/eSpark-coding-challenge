class Student(object):
    def __init__(self, name, levels_list):
        self.name = name
        self.levels = levels_list

    def __str__(self):
        return "{} ==> {}".format(self.name, str(self.levels))

    def __repr__(self):
        return str(self.__dict__)

    def path(self, domain_order, number=5):

        a = domain_order[:]

        for lvl in self.levels:
            a = filter(lambda x: not (lvl.domain == x.domain and
                                      x.grade < lvl.grade), a)
        return a[:number]
