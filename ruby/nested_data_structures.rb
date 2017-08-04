#This is a nested data structure outlining the major branches of philosophy and their corresponding sub-branches using additional arrays to hold strings with info relating to the specific topic.


philosophy = {
    metaphysics: {
        cosmology: {
            physical: [
                "big_bang",
                "non_standard"
            ],
            religious: [
                "biblical",
                "buddhist",
                "hindu",
                "jain",
                "taoist"
            ],
            esoteric: ["occult"]
        },
        ontology: {
            mereotopology: [
                "point_free_geo",
                "wholes",
                "parts",
                "part_of_parts",
                "boundaries"
            ],
            meta: [
                "analytic_synthetic",
                "internal_external",
                "ontological_commitments"
            ]
        },
        space_time: {
            absolutism_and_relationalism: [
                "leibniz",
                "newton",
                "mach",
                "einstein"
            ],
            conventionalism: [
                "henri_poincare",
                "hans_reichenbach"
            ],
            direction_of_time: [
                "causation_solution",
                "thermodynamics_solution",
                "laws_solution"
            ]
        },
        meta: {
            this_is: ["so meta..."]
        },
    },
    epistemology: {
        alethiology: ["the study of the nature of truth"],
        formal: ["uses logic, probability theory, and computability theory"],
        meta: ["understanding our knowledge of knowledge itself"],
        social: [
            "Margaret Egan",
            "Jesse Shera",
            "Alvin Goldman",
            "Steve Fuller"
        ]
    },
    ethics: {
        descriptive: ["What do people think is right?"],
        normative: ["How should people act?"],
        applied: ["How do we take moral knowledge and put it into practice?"],
        meta: ["What does right even mean?"]
    },
    logic: {
        formal: [
            "inference",
            "Formalism"
        ],
        informal: [
            "personal exchange",
            "advertising",
            "political debate",
            "mass media",
            "legal argument"
        ],
        symbolic: [
            "Predicate Logic",
            "Propositional Logic",
            "relations of symbols"
        ],
        mathematical: [
            "Logicism",
            "Intuitionism"
        ]
    },
    aesthetics: {
        aesthetic_judgements: [
            "Kant",
            "Aestheticians",
            "sensory discrimination"
        ],
        aesthetic_universals: [
            "Expertise",
            "Non-Utilitarian Pleasure",
            "Style",
            "Criticism",
            "Imitation",
            "Imagination"
        ]
    }
}

p philosophy[:metaphysics][:cosmology][:esoteric][0]

p philosophy[:epistemology][:social][3]

p philosophy[:aesthetics][:aesthetic_universals][2]