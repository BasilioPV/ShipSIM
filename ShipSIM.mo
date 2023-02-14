package ShipSIM "Ship simulation library"
  extends Modelica.Icons.Package;

  package UsersGuide "User's Guide"
    extends Modelica.Icons.Information;

    package Overview "Overview"
      extends Modelica.Icons.Information;
      annotation(
        Documentation(info = "<html><head></head><body>ShipSIM package has the aim to provide Modelica models relative to Naval Architecture, specially to perform 6 DoF simulations, propulsion systems, electrical plant, engines, etc... to enable designers a true Model-Based Engineering (MBE) based on open source solutions.<div><br><div>Through decades of investigation, naval architecture knowledge was documented in natural language on papers, books, thesis and other scientific publications. The rise of CFD programs in the last decades, looking for a generalized solution, puts all this knowledge in the background. But CFD calculation times are not adequate for the real-time simulations required by digital twin technology.</div><div><br></div><div>Mature acausal simulation languages, such as Modelica, enables the use of all this knowledge in a practical way to develop an trusted, easy to maintain and reusable simulation library.</div><div><br><div><div>This library remains under heavy development and exhaustive validation is needed to gain confidence on the results. Nevertheless, the library is based on state-of-the art publications coded by Naval Architects that ensure a correct implementations of the background physics.</div></div></div></div></body></html>"));
    end Overview;

    package License "License"
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        Documentation(info = "<html><head>
        <title>The Modelica License 2</title>
        <style type=\"text/css\">
        *       { font-size: 10pt; font-family: Arial,sans-serif; }
        code    { font-size:  9pt; font-family: Courier,monospace;}
        h6      { font-size: 10pt; font-weight: bold; color: green; }
        h5      { font-size: 11pt; font-weight: bold; color: green; }
        h4      { font-size: 13pt; font-weight: bold; color: green; }
        address {                  font-weight: normal}
        td      { solid #000; vertical-align:top; }
        th      { solid #000; vertical-align:top; font-weight: bold; }
        table   { solid #000; border-collapse: collapse;}
        </style>
    </head>
    <body lang=\"en-US\">
        <p>All files in this directory and in all subdirectories, as well as the entire ShipSIM package, are released under
        the \"Modelica License&nbsp;2 with additional clause 16\" (if not explicitly noted
        otherwise) explained on this document.</p>
        <p><a href=\"#The_Modelica_License_2-outline\">The Modelica License 2 with additional clause 16</a><br>
        <a href=\"#How_to_Apply_the_Modelica_License_2-outline\">How to Apply the
        Modelica License 2 with additional clause 16</a><br>
        <a href=\"#Frequently_Asked_Questions-outline\">Frequently Asked
        Questions</a><br></p><p><b>What means \"additional clause 16\"?</b></p><p>Clause 16 is an addtional clause created by the authors of ShipSIM added to standard \"Modelica License 2\" to enable ShipSIM licensor, authors and colaborators use public material from other ShipSIM user's to promote ShipSIM.</p><p>-----------------------------------------</p><p><b><i>\"Attribution Notice\" for the use of this package on other works:</i></b></p><p><b><font size=\"5\">This product uses Modelica ShipSIM package</font></b></p><p>licensed by&nbsp;<span style=\"font-size: 13.333333015441895px;\">Basilio Puente and M Dolores Fernandez</span>&nbsp;under the Modelica License&nbsp;2 with additional clause 16<br>Copyright © 2020-2023, Basilio Puente, M Dolores Fernandez and contributors.</p><p><em>ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License&nbsp;2 with additional clause 16. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><p>----------------------------------------</p><p><b><i>\"Derivative Work Attribution Notice\" for the use of this package on other works:</i></b></p><p style=\"font-size: 13.333333015441895px;\"><b>This product contains Derivative Work from Modelica ShipSIM package</b></p><p style=\"font-size: 13.333333015441895px;\">ShipSIM Modelica package is licensed by&nbsp;<span style=\"font-size: 13.333333015441895px;\">Basilio Puente and M Dolores Fernandez</span>&nbsp;under the Modelica License&nbsp;2 with additional clause 16<br>Copyright © 2020-2023, Basilio Puente, M Dolores Fernandez and contributors.</p><p style=\"font-size: 13.333333015441895px;\"><em>ShipSIM Modelica package is&nbsp;<u>free</u>&nbsp;software and the use is completely at&nbsp;<u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License&nbsp;2 with additional clause 16. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><p><br></p><hr>
        <h4><a name=\"The_Modelica_License_2-outline\" id=\"The_Modelica_License_2-outline\"></a>The Modelica License&nbsp;2 with additional clause 16</h4>
        <p><strong>Preamble.</strong> The goal of this license is that Modelica
        related model libraries, software, images, documents, data files etc. can
        be used freely in the original or a modified form, in open source and in
        commercial environments (as long as the license conditions below are
        fulfilled, in particular sections&nbsp;2c) and 2d). The Original Work is
        provided free of charge and the use is completely at your own risk.
        Developers of free Modelica packages are encouraged to utilize this license
        for their work.</p>
        <p>The Modelica License applies to any Original Work that contains the
        following licensing notice adjacent to the copyright notice(s) for this
        Original Work:</p>
        <p><strong>Licensed by &lt;name of Licensor&gt; under the Modelica
        License&nbsp;2 with additional clause 16</strong></p>
        <p><strong>1. Definitions.</strong></p>
        <ol type=\"a\">
            <li>\"License\" is this Modelica License.</li>
            <li>\"Original Work\" is any work of authorship, including
            software, images, documents, data files, that contains the above
            licensing notice or that is packed together with a licensing notice
            referencing it.</li>
            <li>\"Licensor\" is the provider of the Original Work who has
            placed this licensing notice adjacent to the copyright notice(s) for
            the Original Work. The Original Work is either directly provided by the
            owner of the Original Work, or by a licensee of the owner.</li>
            <li>\"Derivative Work\" is any modification of the Original
            Work which represents, as a whole, an original work of authorship. For
            the matter of clarity and as examples:
                <ol type=\"a\">
                    <li>Derivative Work shall not include work that remains
                    separable from the Original Work, as well as merely extracting
                    a part of the Original Work without modifying it.</li>
                    <li>Derivative Work shall not include (a) fixing of errors
                    and/or (b) adding vendor specific Modelica annotations and/or
                    (c) using a subset of the classes of a Modelica package, and/or
                    (d) using a different representation, e.g., a binary
                    representation.</li>
                    <li>Derivative Work shall include classes that are copied from
                    the Original Work where declarations, equations or the
                    documentation are modified.</li>
                    <li>Derivative Work shall include executables to simulate the
                    models that are generated by a Modelica translator based on the
                    Original Work (of a Modelica package).</li>
                </ol>
            </li>
            <li>\"Modified Work\" is any modification of the Original
            Work with the following exceptions: (a) fixing of errors and/or (b)
            adding vendor specific Modelica annotations and/or (c) using a subset
            of the classes of a Modelica package, and/or (d) using a different
            representation, e.g., a binary representation.</li>
            <li>\"Source Code\" means the preferred form of the Original
            Work for making modifications to it and all available documentation
            describing how to modify the Original Work.</li>
            <li>\"You\" means an individual or a legal entity exercising
            rights under, and complying with all of the terms of, this
            License.</li>
            <li>\"Modelica package\" means any Modelica library that is
            defined with the
            \"<code><strong>package</strong>&nbsp;&lt;Name&gt;&nbsp;...&nbsp;<strong>end</strong>&nbsp;&lt;Name&gt;;</code>\"
            Modelica language element.</li>
        </ol>
        <p><strong>2. Grant of Copyright License.</strong> Licensor grants You a
        worldwide, royalty-free, non-exclusive, sublicensable license, for the
        duration of the copyright, to do the following:</p>
        <ol type=\"a\">
            <li>
                <p>To reproduce the Original Work in copies, either alone or as
                part of a collection.</p>
            </li>
            <li>
                <p>To create Derivative Works according to Section&nbsp;1d) of this
                License.</p>
            </li>
            <li>
                <p>To distribute or communicate to the public copies of the
                <u>Original Work</u> or a <u>Derivative Work</u> under <u>this
                License</u>. No fee, neither as a copyright-license fee, nor as a
                selling fee for the copy as such may be charged under this License.
                Furthermore, a verbatim copy of this License must be included in
                any copy of the Original Work or a Derivative Work under this
                License.<br>
                For the matter of clarity, it is permitted A) to distribute or
                communicate such copies as part of a (possible commercial)
                collection where other parts are provided under different licenses
                and a license fee is charged for the other parts only and B) to
                charge for mere printing and shipping costs.</p>
            </li>
            <li>
                <p>To distribute or communicate to the public copies of a
                <u>Derivative Work</u>, alternatively to Section&nbsp;2c), under
                <u>any other license</u> of your choice, especially also under a
                license for commercial/proprietary software, as long as You comply
                with Sections&nbsp;3, 4 and 8 below.<br>
                For the matter of clarity, no restrictions regarding fees, either
                as to a copyright-license fee or as to a selling fee for the copy
                as such apply.</p>
            </li>
            <li>
                <p>To perform the Original Work publicly.</p>
            </li>
            <li>
                <p>To display the Original Work publicly.</p>
            </li>
        </ol>
        <p><strong>3. Acceptance.</strong> Any use of the Original Work or a
        Derivative Work, or any action according to either Section&nbsp;2a) to 2f)
        above constitutes Your acceptance of this License.</p>
        <p><strong>4. Designation of Derivative Works and of Modified
        Works.</strong> The identifying designation of Derivative Work and of
        Modified Work must be different to the corresponding identifying
        designation of the Original Work. This means especially that the
        (root-level) name of a Modelica package under this license must be changed
        if the package is modified (besides fixing of errors, adding vendor
        specific Modelica annotations, using a subset of the classes of a Modelica
        package, or using another representation, e.g. a binary
        representation).</p>
        <p><strong>5. Grant of Patent License.</strong> Licensor grants You a
        worldwide, royalty-free, non-exclusive, sublicensable license, under patent
        claims owned by the Licensor or licensed to the Licensor by the owners of
        the Original Work that are embodied in the Original Work as furnished by
        the Licensor, for the duration of the patents, to make, use, sell, offer
        for sale, have made, and import the Original Work and Derivative Works
        under the conditions as given in Section&nbsp;2. For the matter of clarity,
        the license regarding Derivative Works covers patent claims to the extent
        as they are embodied in the Original Work only.</p>
        <p><strong>6. Provision of Source Code.</strong> Licensor agrees to provide
        You with a copy of the Source Code of the Original Work but reserves the
        right to decide freely on the manner of how the Original Work is
        provided.<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For the matter of clarity, Licensor
        might provide only a binary representation of the Original Work. In that
        case, You may (a) either reproduce the Source Code from the binary
        representation if this is possible (e.g., by performing a copy of an
        encrypted Modelica package, if encryption allows the copy operation) or (b)
        request the Source Code from the Licensor who will provide it to You.</p>
        <p><strong>7. Exclusions from License Grant.</strong> Neither the names of
        Licensor, nor the names of any contributors to the Original Work, nor any
        of their trademarks or service marks, may be used to endorse or promote
        products derived from this Original Work without express prior permission
        of the Licensor. Except as otherwise expressly stated in this License and
        in particular in Sections&nbsp;2 and 5, nothing in this License grants any
        license to Licensor's trademarks, copyrights, patents, trade secrets or any
        other intellectual property, and no patent license is granted to make, use,
        sell, offer for sale, have made, or import embodiments of any patent
        claims.<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No license is granted to the trademarks
        of Licensor even if such trademarks are included in the Original Work,
        except as expressly stated in this License. Nothing in this License shall
        be interpreted to prohibit Licensor from licensing under terms different
        from this License any Original Work that Licensor otherwise would have a
        right to license.</p>
        <p><strong>8. Attribution Rights.</strong> You must retain in the Source
        Code of the Original Work and of any Derivative Works that You create, all
        author, copyright, patent, or trademark notices, as well as any descriptive
        text identified therein as an \"Attribution Notice\". The same
        applies to the licensing notice of this License in the Original Work. For
        the matter of clarity, \"author notice\" means the notice that
        identifies the original author(s).<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You must cause the Source Code for any
        Derivative Works that You create to carry a prominent Attribution Notice
        reasonably calculated to inform recipients that You have modified the
        Original Work.<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In case the Original Work or Derivative
        Work is not provided in Source Code, the Attribution Notices shall be
        appropriately displayed, e.g., in the documentation of the Derivative
        Work.</p>
        <p><strong>9. Disclaimer of Warranty.<br></strong> <u><strong>The Original
        Work is provided under this License on an \"as is\" basis and
        without warranty, either express or implied, including, without limitation,
        the warranties of non-infringement, merchantability or fitness for a
        particular purpose. The entire risk as to the quality of the Original Work
        is with You.</strong></u> This disclaimer of warranty constitutes an
        essential part of this License. No license to the Original Work is granted
        by this License except under this disclaimer.</p>
        <p><strong>10. Limitation of Liability.</strong> Under no circumstances and
        under no legal theory, whether in tort (including negligence), contract, or
        otherwise, shall the Licensor, the owner or a licensee of the Original Work
        be liable to anyone for any direct, indirect, general, special, incidental,
        or consequential damages of any character arising as a result of this
        License or the use of the Original Work including, without limitation,
        damages for loss of goodwill, work stoppage, computer failure or
        malfunction, or any and all other commercial damages or losses. This
        limitation of liability shall not apply to the extent applicable law
        prohibits such limitation.</p>
        <p><strong>11. Termination.</strong> This License conditions your rights to
        undertake the activities listed in Section&nbsp;2 and 5, including your
        right to create Derivative Works based upon the Original Work, and doing so
        without observing these terms and conditions is prohibited by copyright law
        and international treaty. Nothing in this License is intended to affect
        copyright exceptions and limitations. This License shall terminate
        immediately and You may no longer exercise any of the rights granted to You
        by this License upon your failure to observe the conditions of this
        license.</p>
        <p><strong>12. Termination for Patent Action.</strong> This License shall
        terminate automatically and You may no longer exercise any of the rights
        granted to You by this License as of the date You commence an action,
        including a cross-claim or counterclaim, against Licensor, any owners of
        the Original Work or any licensee alleging that the Original Work infringes
        a patent. This termination provision shall not apply for an action alleging
        patent infringement through combinations of the Original Work under
        combination with other software or hardware.</p>
        <p><strong>13. Jurisdiction.</strong> Any action or suit relating to this
        License may be brought only in the courts of a jurisdiction wherein the
        Licensor resides and under the laws of that jurisdiction excluding its
        conflict-of-law provisions. The application of the United Nations
        Convention on Contracts for the International Sale of Goods is expressly
        excluded. Any use of the Original Work outside the scope of this License or
        after its termination shall be subject to the requirements and penalties of
        copyright or patent law in the appropriate jurisdiction. This section shall
        survive the termination of this License.</p>
        <p><strong>14. Attorneys' Fees.</strong> In any action to enforce the terms
        of this License or seeking damages relating thereto, the prevailing party
        shall be entitled to recover its costs and expenses, including, without
        limitation, reasonable attorneys' fees and costs incurred in connection
        with such action, including any appeal of such action. This section shall
        survive the termination of this License.</p>
        <p><strong>15. Miscellaneous.</strong></p>
        <ol type=\"a\">
            <li>If any provision of this License is held to be unenforceable, such
            provision shall be reformed only to the extent necessary to make it
            enforceable.</li>
            <li>No verbal ancillary agreements have been made. Changes and
            additions to this License must appear in writing to be valid. This also
            applies to changing the clause pertaining to written form.</li>
            <li>You may use the Original Work in all ways not otherwise restricted
            or conditioned by this License or by law, and Licensor promises not to
            interfere with or be responsible for such uses by You.</li>
        </ol><div><strong style=\"font-size: 13.333333015441895px;\">16. Promotion Rights. </strong><span style=\"font-size: 13.333333015441895px;\">&nbsp;The use of the Original Work or Derivative Work by You on software (lincensed or not), papers, thesis, conferences or other public available work grants to the Licensor and their contributors to promotion on any form (papers, conferences, or othe public or private work) the Original Work using this public available work or software from You retaining the attribution to You on this aspect. Licensor and their contributors thanks you for notifying them of the use of the Original Work or Derivative Work by means of the contact info provided on this package.&nbsp;</span></div>
        <hr>
        <h4><a name=\"How_to_Apply_the_Modelica_License_2-outline\" id=\"How_to_Apply_the_Modelica_License_2-outline\"></a> How to Apply the
        Modelica License&nbsp;2 with additional clause 16</h4>
        <p>At the top level of your Modelica package and at every important
        subpackage, add the following notices in the info layer of the package:</p>
        <p>Licensed by &lt;Licensor&gt; under the Modelica License&nbsp;2 with additional clause 16<br>
        Copyright © &lt;year1&gt;-&lt;year2&gt;, &lt;name of copyright
        holder(s)&gt;.</p>
        <p><em>This Modelica package is <u>free</u> software and the use is
        completely at <u>your own risk</u>; it can be redistributed and/or modified
        under the terms of the Modelica License&nbsp;2 with additional clause 16. For license conditions
        (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p><p><br></p>
        <hr>
        <h5><a name=\"Frequently_Asked_Questions-outline\" id=\"Frequently_Asked_Questions-outline\"></a> Frequently Asked Questions</h5>
        <p>This section contains questions/answer to users and/or distributors of
        Modelica packages and/or documents under Modelica License&nbsp;2&nbsp;<span style=\"font-size: 13.333333015441895px;\">with additional clause 16</span>. Note, the
        answers to the questions below are not a legal interpretation of the
        Modelica License&nbsp;2 with additional clause 16. In case of a conflict, the language of the license
        shall prevail.</p>
        <h6>Using or Distributing a Modelica <u>Package</u> under the Modelica
        License&nbsp;2&nbsp;<span style=\"font-size: 13.333333015441895px;\">with additional clause 16</span></h6>
        <p><i>NOTE: Where in this document says \"Modelica License 2\" it means \"Modelica License 2 with additional clause 16\"</i></p><p><strong>What are the main differences to the previous version of the
        Modelica License?</strong></p>
        <ol>
            <li>
                <p>Modelica License&nbsp;1 is unclear whether the licensed Modelica
                package can be distributed under a different license.
                Version&nbsp;2 explicitly allows that \"Derivative Work\"
                can be distributed under any license of Your choice, see examples
                in Section&nbsp;1d) as to what qualifies as Derivative Work (so,
                version&nbsp;2 is clearer).</p>
            </li>
            <li>
                <p>If You modify a Modelica package under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>&nbsp;(besides fixing of errors, adding vendor specific Modelica
                annotations, using a subset of the classes of a Modelica package,
                or using another representation, e.g., a binary representation),
                you must rename the root-level name of the package for your
                distribution. In version&nbsp;1 you could keep the name (so,
                version&nbsp;2 is more restrictive). The reason of this restriction
                is to reduce the risk that Modelica packages are available that
                have identical names, but different functionality.</p>
            </li>
            <li>
                <p>Modelica License&nbsp;1 states that \"It is not allowed to
                charge a fee for the original version or a modified version of the
                software, besides a reasonable fee for distribution and
                support\". Version&nbsp;2 has a similar intention for all
                Original Work under&nbsp;<span style=\"font-size: 13.333333015441895px;\"><u>Modelica License&nbsp;2 with additional clause 16</u></span>&nbsp;(to remain free
                of charge and open source) but states this more clearly as
                \"No fee, neither as a copyright-license fee, nor as a selling
                fee for the copy as such may be charged\". Contrary to
                version&nbsp;1,&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>&nbsp;has no restrictions on fees
                for Derivative Work that is provided under a different license (so,
                version&nbsp;2 is clearer and has fewer restrictions).</p>
            </li>
            <li><p><span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>&nbsp;introduces several useful provisions for
                the licensee (articles&nbsp;5, 6, 12), and for the licensor
                (articles&nbsp;7, 12, 13, 14) that have no counter part in
                version&nbsp;1.</p>
            </li>
            <li><p><span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>&nbsp;can be applied to all type of work,
                including documents, images and data files, contrary to
                version&nbsp;1 that was dedicated for software only (so,
                version&nbsp;2 is more general).</p>
            </li>
        </ol>
        <p><strong>Can I distribute a Modelica package (under Modelica
        License&nbsp;2 with additional clause 16) as part of my commercial Modelica modeling and simulation
        environment?</strong></p>
        <p>Yes, according to Section&nbsp;2c). However, you are not allowed to
        charge a fee for this part of your environment. Of course, you can charge
        for your part of the environment.</p>
        <p><strong>Can I distribute a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) under a different license?</strong></p>
        <p>No. The license of an unmodified Modelica package cannot be changed
        according to Sections&nbsp;2c) and 2d). This means that you cannot
        <u>sell</u> copies of it, any distribution has to be free of charge.</p>
        <p><strong>Can I distribute a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) under a different license when I first encrypt the
        package?</strong></p>
        <p>No. Merely encrypting a package does not qualify for Derivative Work and
        therefore the encrypted package has to stay under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>.</p>
        <p><strong>Can I distribute a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) under a different license when I first add classes to the
        package?</strong></p>
        <p>No. The package itself remains unmodified, i.e., it is Original Work,
        and therefore the license for this part must remain under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>. The newly added classes can be, however, under a different
        license.</p>
        <p><strong>Can I copy a class out of a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) and include it</strong> <u><strong>unmodified</strong></u>
        <strong>in a Modelica package under a</strong>
        <u><strong>commercial/proprietary</strong></u>
        <strong>license?</strong></p>
        <p>No, according to article&nbsp;2c). However, you can include model,
        block, function, package, record and connector classes in your Modelica
        package under&nbsp;<span style=\"font-size: 13.333333015441895px;\"><u>Modelica License&nbsp;2 with additional clause 16</u></span>. This means that your Modelica
        package could be under a commercial/proprietary license, but one or more
        classes of it are under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>.<br>
        Note, a \"type\" class (e.g., type Angle =
        Real(unit=\"rad\")) can be copied and included unmodified under a
        commercial/proprietary license (for details, see the next question).</p>
        <p><strong>Can I copy a type class or</strong> <u><strong>part</strong></u>
        <strong>of a model, block, function, record, connector class, out of a
        Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) and include it modified or
        unmodified in a Modelica package under a</strong>
        <u><strong>commercial/proprietary</strong></u>
        <strong>license?</strong></p>
        <p>Yes, according to article&nbsp;2d), since this will in the end usually
        qualify as Derivative Work. The reasoning is the following: A type class or
        part of another class (e.g., an equation, a declaration, part of a class
        description) cannot be utilized \"by its own\". In order to make
        this \"usable\", you have to add additional code in order that
        the class can be utilized. This is therefore usually Derivative Work and
        Derivative Work can be provided under a different license. Note, this only
        holds, if the additional code introduced is sufficient to qualify for
        Derivative Work. Merely, just copying a class and changing, say, one
        character in the documentation of this class would be no Derivative Work
        and therefore the copied code would have to stay under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>.</p>
        <p><strong>Can I copy a class out of a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) and include it in</strong> <u><strong>modified</strong></u>
        <strong>form in a</strong> <u><strong>commercial/proprietary</strong></u>
        <strong>Modelica package?</strong></p>
        <p>Yes. If the modification can be seen as a \"Derivative Work\",
        you can place it under your commercial/proprietary license. If the
        modification does not qualify as \"Derivative Work\" (e.g., bug
        fixes, vendor specific annotations), it must remain under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>. This means that your Modelica package could be under a
        commercial/proprietary license, but one or more parts of it are under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>.</p>
        <p><strong>Can I distribute a \"save total model\" under my
        commercial/proprietary license, even if classes under&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16&nbsp;</strong><strong>are included?</strong></p>
        <p>Your classes of the \"save total model\" can be distributed
        under your commercial/proprietary license, but the classes under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>&nbsp;must remain under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>. This means you
        can distribute a \"save total model\", but some parts might be
        under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>.</p>
        <p><strong>Can I distribute a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) in encrypted form?</strong></p>
        <p>Yes. Note, if the encryption does not allow \"copying\" of
        classes (in to unencrypted Modelica source code), you have to send the
        Modelica source code of this package to your customer, if he/she wishes it,
        according to article&nbsp;6.</p>
        <p><strong>Can I distribute an executable under my commercial/proprietary
        license, if the model from which the executable is generated uses models
        from a Modelica package under&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>?</strong></p>
        <p>Yes, according to article&nbsp;2d), since this is seen as Derivative
        Work. The reasoning is the following: An executable allows the simulation
        of a concrete model, whereas models from a Modelica package (without
        pre-processing, translation, tool run-time library) are not able to be
        simulated without tool support. By the processing of the tool and by its
        run-time libraries, significant new functionality is added (a model can be
        simulated whereas previously it could not be simulated) and functionality
        available in the package is removed (e.g., to build up a new model by
        dragging components of the package is no longer possible with the
        executable).</p>
        <p><strong>Is my modification to a Modelica package (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) a Derivative Work?</strong></p>
        <p>It is not possible to give a general answer to it. To be regarded as
        \"an original work of authorship\", a derivative work must be
        different enough from the original or must contain a substantial amount of
        new material. Making minor changes or additions of little substance to a
        preexisting work will not qualify the work as a new version for such
        purposes.</p>
        <h6>Using or Distributing a Modelica <u>Document</u> under the Modelica
        License&nbsp;2 with additioanl clause 16</h6>
        <p><i style=\"font-size: 13.333333015441895px;\">NOTE: Where in this document says \"Modelica License 2\" it means \"Modelica License 2 with additional clause 16\"</i></p><p>This section is devoted especially for the following applications:</p>
        <ol type=\"a\">
            <li>
                <p>A Modelica tool extracts information out of a Modelica package
                and presents the result in form of a \"manual\" for this
                package in, e.g., html, doc, or pdf format.</p>
            </li>
            <li>
                <p>The Modelica language specification is a document defining the
                Modelica language. It will be licensed under&nbsp;<span style=\"font-size: 13.333333015441895px;\">Modelica License&nbsp;2 with additional clause 16</span>.</p>
            </li>
            <li>
                <p>Someone writes a book about the Modelica language and/or
                Modelica packages and uses information which is available in the
                Modelica language specification and/or the corresponding Modelica
                package.</p>
            </li>
        </ol>
        <p><strong>Can I sell a manual that was basically derived by extracting
        information automatically from a Modelica package&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>&nbsp;(e.g., a \"reference guide\" of the Modelica
        Standard Library)?</strong></p>
        <p>Yes. Extracting information from a Modelica package, and providing it in
        a human readable, suitable format, like html, doc or pdf format, where the
        content is significantly modified (e.g. tables with interface information
        are constructed from the declarations of the public variables) qualifies as
        Derivative Work and there are no restrictions to charge a fee for
        Derivative Work under alternative&nbsp;2d).</p>
        <p><strong>Can I copy a text passage out of a Modelica document (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) and use it</strong>
        <u><strong>unmodified</strong></u> <strong>in my document (e.g. the
        Modelica syntax description in the Modelica Specification)?</strong></p>
        <p>Yes. In case you distribute your document, the copied parts are still
        under Modelica License&nbsp;2 with additional clause 16 and you are not allowed to charge a license
        fee for this part. You can, of course, charge a fee for the rest of your
        document.</p>
        <p><strong>Can I copy a text passage out of a Modelica document (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>) and use it in</strong>
        <u><strong>modified</strong></u> <strong>form in my document?</strong></p>
        <p>Yes, the creation of Derivative Works is allowed. In case the content is
        significantly modified this qualifies as Derivative Work and there are no
        restrictions to charge a fee for Derivative Work under
        alternative&nbsp;2d).</p>
        <p><strong>Can I sell a printed version of a Modelica document (</strong><strong style=\"font-size: 13.333333015441895px;\">under Modelica License&nbsp;2 with&nbsp;</strong><strong style=\"font-size: 13.333333015441895px;\">additional</strong><strong style=\"font-size: 13.333333015441895px;\">&nbsp;clause 16</strong><strong>), e.g., the Modelica Language
        Specification?</strong></p>
        <p>No, if you are not the copyright-holder, since article&nbsp;2c) does not
        allow a selling fee for a (in this case physical) copy. However, mere
        printing and shipping costs may be recovered.</p>
        
        <br><h5><a name=\"Simplified Usage Guidelines\" id=\"Simplified_usage_guidelines\"></a> Simplified Usage Guidelines</h5>
        <p>This section contains typical usage examples and their legal consideration. Note, the
        answers to the questions below are not a legal interpretation of the
        Modelica License&nbsp;2 with additional clause 16. In case of a conflict, the language of the license
        shall prevail.</p><p><b>\"Drag and drop\" use of classes of this package on other works</b></p><p>Since \"drag and drop\" classes on other works (libraries, models, etc...) will retain a reference (such as \"annotation(uses())\") to the Original Work in order to be functional, You can license your work with any license You want.</p><p>According to Art.8 and Art.16 You must include on your work an prominent appropiately displayed \"Attribution Notice\" to the Original Work (see in the beginning the sample provided) and provide the unmodified Original Work in source code along your work. Plase notify to the Licensor the use of the Original Work on your work.</p><p><b>Add a custom class into the Original Work</b></p><p>You must retain the Original Work with their original license and You can license only your developed class/classes with any license you want.</p><p><span style=\"font-size: 13.333333015441895px;\">According to Art.8 and Art.16 You must include on your work an prominent appropiately displayed \"Attribution Notice\" to the Original Work (see in the beginning the sample provided) and provide the unmodified Original Work in source code along your work. Plase notify to the Licensor the use of the Original Work on your work.</span></p><p><b>Copy and paste unmodified source code class (except type class) from Original Work package</b></p><p style=\"font-size: 13.333333015441895px;\">You must retain the Original Work with their original license and You can license only your developed class/classes with any license you want.</p><p style=\"font-size: 13.333333015441895px;\"><span style=\"font-size: 13.333333015441895px;\">According to Art.8 and Art.16 You must include on your work an prominent appropiately displayed \"Attribution Notice\" to the Original Work (see in the beginning the sample provided) and provide the unmodified Original Work in source code along your work. Plase notify to the Licensor the use of the Original Work on your work.</span></p><p><b>Copy and paste a type class or <u>part</u> of a model, block, function, record or connector class from&nbsp;<span style=\"font-size: 13.333333015441895px;\">Original Work package</span></b></p><p><span style=\"font-size: 13.333333015441895px;\">This is considerated Derivative Work,&nbsp;</span>since it is a <i><u>part</u></i> of the component and need work to make \"usable\".&nbsp;<span style=\"font-size: 13.333333015441895px;\">You can license your work with any license You want. Note that modified classes cannot have the same name as the Original Work class name, according to Art.4.</span></p><p><span style=\"font-size: 13.333333015441895px;\">According to Art.8 and Art.16 You must include on your work an prominent appropiately displayed \"Derivative Work Attribution Notice\" to the Original Work (see in the beginning the sample provided). Plase notify to the Licensor the use of the Derivative Work on your work.</span></p><p>&nbsp;&nbsp;&nbsp;</p><p><br></p>
    
    </body></html>"),
        Icon(graphics = {Ellipse(origin = {29, 23}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-25, 25}, {25, -25}}), Polygon(origin = {30, -20}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-8, 16}, {-18, -38}, {2, -14}, {22, -40}, {8, 16}, {8, 16}, {-8, 16}})}));
    end License;

    package ReleaseNotes "Release Notes"
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        Documentation(info = "<html><head></head><body><div><b>Version 1.0 (14-02-2023):</b></div><div>First official release of the library on GitHub (BasilioPV/ShipSIM)</div><b><div><b><br></b></div><div><b><br></b></div>Version 0.0 (July 2022):</b><div>First publication on GitHub (BasilioPV/ShipSIM)</div><div><br></div><div><b>-----------------------------------------</b></div><div><b>Roadmap:</b></div><div><ul><li>Include wind effects and conventional Cd and Cl coefficients for ships</li><li>Include current effects</li><li>Include waves (major implementation)</li><li>Create POD component</li><li>Create electric propulsion motor</li><li>Create wingsails</li></ul><div><br></div></div></body></html>"));
    end ReleaseNotes;

    package References "References"
      extends Modelica.Icons.References;
      annotation(
        Documentation(info = "<html><head></head><body><div><br></div>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
<td>[Principles]</td>
<td>Edward V. Lewis et al,
  \"Princiles of Naval Architecture\",
  <em>SNAME</em>,
  Second Revision, 1988</td>
</tr>
<tr>
<td>[ModMultibody]</td>
<td>M. Otter, H. Elmqvist and S.E. Mattsson,
  <em>Proceedings of the 3rd International Modelica Conference</em>,
  2003</td>
</tr>
    <tr>
    <td>[Yasukawa2015]</td>
    <td>Ghalib Taimuri et al,
    \"Introduction of MMG standard method for ship maneuvering predictions\",
    Journal of Marine Science and Technology, 20, 37-52, 2015, <a href=\"https://link.springer.com/article/10.1007/s00773-014-0293-y\">https://link.springer.com/article/10.1007/s00773-014-0293-y</a></td>
    </tr>
<tr>
<td>[Taimuri2020]</td>
<td>Ghalib Taimuri et al,
  \"A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters\",
  Journal of Ocean Engineering, 2020, <a href=\"https://doi.org/10.1016/j.oceaneng.2020.108103\">https://doi.org/10.1016/j.oceaneng.2020.108103</a></td>
</tr>
<tr>
<td>[Jialun2020]</td>
<td>Jialun Liu,
  \"Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics\",
  Springer 2020,
  <a href=\"https://doi.org/10.1007/978-3-030-47475-1\">https://doi.org/10.1007/978-3-030-47475-1</a></td>
</tr>
<tr>
<td>[Oosterveld1975]</td>
<td>M.W.C. Oosterveld and P. Van Oossanen,
  \"Further computer-analyzed data of the wageningen B-screw series\",
International Shipbuilding Progress, Vol. 22, No. 251, July 1975<br></td>
</tr>
<tr>
<td>[Harvald1983]</td>
<td>Harvald S.A.,
  \"Resistance and Propulsion of Ships\",
Wiley 1983, ISBN 0-89464-754-7<br></td>
</tr>
<tr>
<td>[Holtrop1984]</td>
<td>Holtrop J.,
  \"A Statistical Re-analysis of Resistance and Propulsion Data\",
ISP, Vol.31<br></td>
</tr>
<tr>
<td>[Brix1993]</td>
<td>Brix J.,
  \"Manoeuvring technical manual\",
Hamburg: Seehafen Verlag<br></td>
</tr>
<tr>
<td>[Acorts]</td>
<td>Antonio Corts,
  \"Gemelo digital de timón y servo usando Modelica\",
MSc Thesis 2022<br></td>
</tr>
</tbody></table>

</body></html>"));
    end References;

    package Contact "Contact contributors"
      extends Modelica.Icons.Contact;
      annotation(
        Documentation(info = "<html><head></head><body><p>ShipSIM repository:</p><p><a href=\"https://github.com/BasilioPV/ShipSIM\">https://github.com/BasilioPV/ShipSIM</a></p><p><b>Main authors</b></p>
    
    <p>
    <strong><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Basilio Puente Varela</strong><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>email: <a href=\"mailto:basiliopuentevarela@gmail.com\">basiliopuentevarela@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>web: <a href=\"http://www.shiptwin.com\">http://www.ShipTwin.com</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Linkedin:&nbsp;<a href=\"https://es.linkedin.com/in/basiliopuentevarela\">https://es.linkedin.com/in/basiliopuentevarela</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>ORCID:&nbsp;0000-0003-1363-5032</p><p><br></p>
    
    <p>
    <strong><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Maria Dolores Fernandez Ballesteros</strong><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>15624 Ares (A Coruña)<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Spain<br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>email:&nbsp;<a href=\"mailto:lolifernandezballesteros@gmail.com\">lolifernandezballesteros@gmail.com</a><br><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>web:&nbsp;<a href=\"http://www.shiptwin.com\">http://www.ShipTwin.com</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>LinkedIn:&nbsp;<a href=\"https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443\">https://es.linkedin.com/in/maría-dolores-fernández-ballesteros-22815443</a></p><p><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>ORCID:&nbsp;0000-0002-1501-8890</p>
    
    <h4>Contributors to this library</h4><div><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span><b>Individuals:</b></div>
    
    <ul>
    <li>Antonio Corts de la Peña (Rudder component)</li>
    </ul>
    
    <h4><span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Institutions:</h4><div><ul><li><a href=\"http://www.tphispania.com/\">Techno Pro Hispania S.L.</a></li></ul></div><h4>Acknowledgements</h4>
    
    <p>
    The authors would like to thank following entities for your contribution to spread both Modelica language as well this package:</p><p></p><ul><li><a href=\"https://www.udc.es/\">Universidade of A Coruña</a></li><li><a href=\"https://www.upm.es/\">Universidad Politécnica de Madrid</a></li></ul><p></p>
    </body></html>"));
    end Contact;
  end UsersGuide;

  package Examples "Sample simulations of the library"
    extends Modelica.Icons.Example;

    package Maneuvering
      extends Modelica.Icons.Example;

      model Test_ZigZag
        extends Modelica.Icons.Example;
        ShipSIM.Components.Ship.ShipModelTh shipModelTh(ini_Vel = {7.15, 0, 0}) annotation(
          Placement(visible = true, transformation(origin = {62, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Components.Ship.HidrodynamicXYY hidrodynamicXYY annotation(
          Placement(visible = true, transformation(origin = {62, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Water_Depth annotation(
          Placement(visible = true, transformation(origin = {89, 23}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedFrame ShipAxis(color_y = {0, 180, 0}, color_z = {255, 0, 0}, diameter = 0.5, length = 30) annotation(
          Placement(visible = true, transformation(origin = {27, 43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(animation = true, height = 10, length = 100, r_shape = {0, 0, 10/2}, width = 20) annotation(
          Placement(visible = true, transformation(origin = {26, 30}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(animation = false, r = {2, 0, 2}) annotation(
          Placement(visible = true, transformation(origin = {28, 6}, extent = {{6, -6}, {-6, 6}}, rotation = 0)));
        inner Modelica.Mechanics.MultiBody.World world(animateWorld = true, defaultN_to_m = 20000, defaultNm_to_m = 200000, enableAnimation = true, label2 = "z", n = {0, 0, -1}, nominalLength = 50) annotation(
          Placement(visible = true, transformation(origin = {-84, 42}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Rudder rudder annotation(
          Placement(visible = true, transformation(origin = {-25, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_pos(r = {-5, 0, 8}) annotation(
          Placement(visible = true, transformation(origin = {21, 17}, extent = {{5, 5}, {-5, -5}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression Ref annotation(
          Placement(visible = true, transformation(origin = {-92, 7}, extent = {{-4, -5}, {4, 5}}, rotation = 0)));
        Modelica.Blocks.Logical.Switch switch1 annotation(
          Placement(visible = true, transformation(origin = {-47, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression MinAngle(y = -10) annotation(
          Placement(visible = true, transformation(origin = {-72, -10}, extent = {{-6, -4}, {6, 4}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression MaxAngle(y = 10) annotation(
          Placement(visible = true, transformation(origin = {-72, 14}, extent = {{-6, -4}, {6, 4}}, rotation = 0)));
        Modelica.Blocks.Logical.OnOffController onOffController(bandwidth = 20, pre_y_start = false) annotation(
          Placement(visible = true, transformation(origin = {-72, 2}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
        ShipSIM.Components.Propulsion.Propeller1Q propeller(WakeFraction = 0.12) annotation(
          Placement(visible = true, transformation(origin = {-3, 3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Speed speed(phi(displayUnit = "rad")) annotation(
          Placement(visible = true, transformation(origin = {27, -15}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression ShaftSpeed(y = 126*(2*3.141592/60)) annotation(
          Placement(visible = true, transformation(origin = {-8, -28}, extent = {{-22, -8}, {22, 8}}, rotation = 0)));
      equation
        connect(Water_Depth.y, shipModelTh.Water_depth) annotation(
          Line(points = {{83.5, 23}, {80, 23}, {80, 18}, {72, 18}}, color = {0, 0, 127}));
        connect(hidrodynamicXYY.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{52, -6}, {46, -6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
        connect(ShipAxis.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{32, 43}, {46, 43}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
        connect(fixedShape.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{32, 30}, {46, 30}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
        connect(fixedTranslation.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{34, 6}, {46, 6}, {46, 18}, {52, 18}}, color = {95, 95, 95}));
        connect(Rudder_pos.frame_a, shipModelTh.frame_a) annotation(
          Line(points = {{26, 17}, {40, 17}, {40, 18}, {52, 18}}, color = {95, 95, 95}));
        connect(Rudder_pos.frame_b, rudder.frame_a) annotation(
          Line(points = {{16, 17}, {-23, 17}, {-23, 10}}, color = {95, 95, 95}));
        connect(onOffController.y, switch1.u2) annotation(
          Line(points = {{-65.4, 2}, {-55.9, 2}, {-55.9, 3}, {-55.4, 3}}, color = {255, 0, 255}));
        connect(Ref.y, onOffController.reference) annotation(
          Line(points = {{-87.6, 7}, {-85.1, 7}, {-85.1, 6}, {-78.6, 6}}, color = {0, 0, 127}));
        connect(switch1.u3, MinAngle.y) annotation(
          Line(points = {{-55.4, -2.6}, {-59.4, -2.6}, {-59.4, -10.6}, {-65.4, -10.6}}, color = {0, 0, 127}));
        connect(shipModelTh.YawDeg, onOffController.u) annotation(
          Line(points = {{68.2, 7.8}, {94.2, 7.8}, {94.2, -50.2}, {-95.8, -50.2}, {-95.8, -2.2}, {-78.8, -2.2}}, color = {0, 0, 127}));
        connect(shipModelTh.shipData, hidrodynamicXYY.shipData) annotation(
          Line(points = {{72, 11}, {78, 11}, {78, 1}, {72, 1}}));
        connect(propeller.frame_a, fixedTranslation.frame_b) annotation(
          Line(points = {{4, 5.8}, {22, 5.8}}, color = {95, 95, 95}));
        connect(propeller.flange, speed.flange) annotation(
          Line(points = {{4, 3}, {4, -18.5}, {20, -18.5}, {20, -15}}));
        connect(ShaftSpeed.y, speed.w_ref) annotation(
          Line(points = {{16.2, -28}, {41, -28}, {41, -15}, {35.2, -15}}, color = {0, 0, 127}));
        connect(propeller.Propeller_flow_diameter, rudder.Propeller_flow_diameter) annotation(
          Line(points = {{-10.2625, 6.5}, {-15.2625, 6.5}, {-15.2625, 6}, {-18.2625, 6}}, color = {0, 0, 127}));
        connect(propeller.Propeller_speed, rudder.Propeller_speed) annotation(
          Line(points = {{-10.2625, 3}, {-18.2625, 3}}, color = {0, 0, 127}));
        connect(MaxAngle.y, switch1.u1) annotation(
          Line(points = {{-65.4, 14}, {-59.4, 14}, {-59.4, 8}, {-55.4, 8}}, color = {0, 0, 127}));
        connect(switch1.y, rudder.Rudder_Order) annotation(
          Line(points = {{-39.3, 3}, {-33.3, 3}, {-33.3, 9}, {-31.3, 9}}, color = {0, 0, 127}));
        annotation(
          experiment(StartTime = 0, StopTime = 500, Tolerance = 1e-06, Interval = 0.2),
          Documentation(info = "<html><head></head><body>This example provides a basic construction of a maneuvering model where the following items are placed:<div><br><div>- Ship model: consist on a ship model for masses, inertia and floatation plus other model for Surge, Sway and Yaw movements.</div></div><div>- Visualizer: an axis frame and a box visualizer represent the local coordinates and the ship.</div><div>- Propulsion system: a propeller and rudder models, in addition with a constant speed shaft, provides the propulstion system model</div><div>- Control: A control that checks ship course (Yaw) and change the rudder order from 10º to -10º makes the logic of a zig-zag test</div></body></html>"),
          Diagram(graphics = {Rectangle(origin = {73, 6}, lineColor = {0, 255, 0}, extent = {{-25, 30}, {25, -30}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Rectangle(origin = {4, -9}, lineColor = {255, 0, 0}, extent = {{-40, 31}, {40, -31}}), Text(origin = {85, -19}, textColor = {0, 255, 0}, extent = {{-7, 3}, {7, -3}}, textString = "Ship model"), Text(origin = {23, -35}, textColor = {255, 0, 0}, extent = {{-11, 3}, {11, -3}}, textString = "Propulsion model"), Rectangle(origin = {22, 38}, lineColor = {255, 0, 255}, extent = {{-20, 14}, {20, -14}}), Text(origin = {11, 27}, textColor = {255, 0, 255}, extent = {{-7, 3}, {7, -3}}, textString = "Visualizer"), Rectangle(origin = {-68, 1}, lineColor = {85, 0, 255}, extent = {{-30, 23}, {30, -23}}), Text(origin = {-70, -18}, textColor = {85, 0, 255}, extent = {{-8, 2}, {8, -2}}, textString = "Control")}, coordinateSystem(extent = {{-125, -75}, {125, 75}})),
          Icon(coordinateSystem(extent = {{-125, -75}, {125, 75}})));
      end Test_ZigZag;
    end Maneuvering;
  end Examples;

  package Components "Library components"
    extends Modelica.Icons.Package;

    package Ship "Components relative to whole ship model"
      model ShipModelTh "Simplified Ship Model"
        parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real Cb = 0.693 "Block Coefficient [-]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real Disp_Table[:, 2] = {{-2.5884e4, 0}, {1.2623e6, 1}, {4.0336e4, 2}} "Displacement Vs Mean draft curve [kg] (take care of water density)" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real LCB_Table[:, 2] = {{4.9049e1, 0}, {1.7677, 1}, {-1.2278, 2}, {4.5593e-1, 3}, {-8.6574e-2, 4}, {7.7545e-3, 5}, {-2.6145e-4, 6}} "LCB Vs Mean Draft curve [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real TCB_Table[:, 2] = {{0, 0}} "TCB Vs Mean Draft curve [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real VCB_Table[:, 2] = {{1.463e-2, 0}, {5.0289e-1, 1}, {3.7673e-3, 2}} "VCB Vs Mean Draft curve [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real BMt_Table[:, 2] = {{2.63608e1, -8.78016e-1}} "BMt Vs Mean Draft curve [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Real BMl_Table[:, 2] = {{4.93467e2, -7.47807e-1}} "BMl Vs Mean Draft curve [m]" annotation(
          Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
        parameter Modelica.SIunits.Mass Displacement = 5681200 "Displacement [kg]" annotation(
          Dialog(group = "Mass Properties"));
        parameter Modelica.SIunits.Length CoG[3] = {50.364, 0, 7} "Centre of Gravity (ship ref. sys.) {X,Y,Z} [m]" annotation(
          Dialog(group = "Mass Properties"));
        parameter Modelica.SIunits.Inertia I_xx = Displacement*(0.3557*B)^2 "X axis inertia (roll) [kg*m2]" annotation(
          Dialog(group = "Mass Properties"));
        parameter Modelica.SIunits.Inertia I_yy = Displacement*(0.2746*Lpp)^2 "Y axis inertia (Pitch) [kg*m2]" annotation(
          Dialog(group = "Mass Properties"));
        parameter Modelica.SIunits.Inertia I_zz = Displacement*(0.2739*Lpp)^2 "Z axis inertia (Yaw) [kg*m2]" annotation(
          Dialog(group = "Mass Properties"));
        parameter Modelica.SIunits.Length ini_Pos[3] = {0, 0, -4} "Initial position {X,Y,Z} [m]" annotation(
          Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
        parameter Modelica.SIunits.Angle ini_Ori[3] = {0, 0, 0} "Initial orientation {X,Y,Z} [rad]" annotation(
          Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
        parameter Modelica.SIunits.Velocity ini_Vel[3] = {0, 0, 0} "Initial speed {X,Y,Z} [m/s]" annotation(
          Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
        Modelica.Mechanics.MultiBody.Parts.Body ShipMass(I_11 = I_xx, I_22 = I_yy, I_33 = I_zz, angles_fixed = true, angles_start = ini_Ori, animation = false, m = Displacement, r_0(each fixed = true, start = ini_Pos), r_CM = CoG, v_0(each fixed = true, start = ini_Vel), w_0_fixed = true) annotation(
          Placement(visible = true, transformation(origin = {46, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
          Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.SIunits.Angle Heel;
        Modelica.SIunits.Angle Trim;
        Modelica.SIunits.Angle Yaw;
        Modelica.SIunits.Velocity Surge;
        Modelica.SIunits.Velocity Sway;
        Modelica.SIunits.Velocity Heave;
        Real P_s[3];
        Real P_f[3];
        Real Draft;
        Real CoB[3];
        Real Disp;
        Real BMt;
        Real BMl;
        Modelica.Blocks.Interfaces.RealInput Water_depth "Water depth value [m]" annotation(
          Placement(visible = true, transformation(origin = {106, 78}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {104, -4}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        ShipSIM.SubComponents.VariableTranslation COB_pos annotation(
          Placement(visible = true, transformation(origin = {32, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForce B_ForceWorld(N_to_m = Displacement*9.81/B, animation = true, diameter = B/40) annotation(
          Placement(visible = true, transformation(origin = {66, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
          Placement(visible = true, transformation(origin = {-36, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteAngularVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
          Placement(visible = true, transformation(origin = {-60, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.SubComponents.VariableTranslation COF_pos annotation(
          Placement(visible = true, transformation(origin = {-70, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        ShipSIM.Interfaces.ShipData shipData annotation(
          Placement(visible = true, transformation(origin = {44, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput YawDeg annotation(
          Placement(visible = true, transformation(origin = {102, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {62, -102}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      protected
        Real Disp_aux[size(Disp_Table, 1)];
        Real LCB_aux[size(LCB_Table, 1)];
        Real TCB_aux[size(TCB_Table, 1)];
        Real VCB_aux[size(VCB_Table, 1)];
        Real BMt_aux[size(BMt_Table, 1)];
        Real BMl_aux[size(BMl_Table, 1)];
      equation
//Calcular las posiciones absolutas de los puntos
        P_s[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, -B, 0});
        P_f[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {Lpp, 0, 0});
        Heel = Modelica.Math.atan((frame_a.r_0[3] - P_s[3])/B);
        Trim = Modelica.Math.atan((P_f[3] - frame_a.r_0[3])/Lpp);
        Draft = Water_depth - (P_f[3] + frame_a.r_0[3])/2;
//Calcular los valores de tablas
        for i in 1:size(Disp_aux, 1) loop
          Disp_aux[i] = Disp_Table[i, 1]*Draft^Disp_Table[i, 2];
        end for;
        for i in 1:size(LCB_aux, 1) loop
          LCB_aux[i] = LCB_Table[i, 1]*Draft^LCB_Table[i, 2];
        end for;
        for i in 1:size(TCB_aux, 1) loop
          TCB_aux[i] = TCB_Table[i, 1]*Draft^TCB_Table[i, 2];
        end for;
        for i in 1:size(VCB_aux, 1) loop
          VCB_aux[i] = VCB_Table[i, 1]*Draft^VCB_Table[i, 2];
        end for;
        for i in 1:size(BMt_aux, 1) loop
          BMt_aux[i] = BMt_Table[i, 1]*Draft^BMt_Table[i, 2];
        end for;
        for i in 1:size(BMl_aux, 1) loop
          BMl_aux[i] = BMl_Table[i, 1]*Draft^BMl_Table[i, 2];
        end for;
        Disp = sum(Disp_aux[:]);
        BMt = sum(BMt_aux[:]);
        BMl = sum(BMl_aux[:]);
        CoB[1] = sum(LCB_aux[:]) - BMl*Modelica.Math.sin(Trim);
        CoB[2] = sum(TCB_aux[:]) - BMt*Modelica.Math.sin(Heel);
        CoB[3] = sum(VCB_aux[:]) + BMl*(1 - Modelica.Math.cos(Trim)) + BMt*(1 - Modelica.Math.cos(Heel));
        COB_pos.r_vect = CoB;
        B_ForceWorld.force = {0, 0, Disp*Modelica.Constants.g_n};
//Ecuaciones
        COF_pos.r_vect = {Lpp/2, 0, Draft/2} "Mide velocidades en el punto indicado por los papers";
        der(Yaw) = absoluteAngularVelocity.w[3];
        Surge = absoluteVelocity.v[1];
        Sway = absoluteVelocity.v[2];
        Heave = absoluteVelocity.v[3];
        connect(frame_a, COB_pos.frame_a) annotation(
          Line(points = {{-100, -40}, {-26, -40}, {-26, 58}, {22, 58}}));
        connect(COB_pos.frame_b, B_ForceWorld.frame_b) annotation(
          Line(points = {{42, 58}, {66, 58}, {66, 48}}, color = {95, 95, 95}));
        connect(ShipMass.frame_a, frame_a) annotation(
          Line(points = {{36, -4}, {-26, -4}, {-26, -40}, {-100, -40}}));
        connect(absoluteAngularVelocity.frame_a, frame_a) annotation(
          Line(points = {{-70, 38}, {-82, 38}, {-82, -40}, {-100, -40}}, color = {95, 95, 95}));
        connect(COF_pos.frame_b, absoluteVelocity.frame_a) annotation(
          Line(points = {{-60, -82}, {-46, -82}}, color = {95, 95, 95}));
        connect(frame_a, COF_pos.frame_a) annotation(
          Line(points = {{-100, -40}, {-82, -40}, {-82, -82}, {-80, -82}}));
//Conecta datos
        shipData.Draft = Draft;
        shipData.Displacement = Disp;
        shipData.CoG = CoG;
        shipData.Angles = {Heel, Trim, Yaw};
        shipData.AngularSpeed = {der(Heel), der(Trim), der(Yaw)};
        shipData.LinearSpeed = {Surge, Sway, Heave};
        YawDeg = -Yaw*180/Modelica.Constants.pi;
        annotation(
          Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Polygon(origin = {0, 3}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}}), Line(origin = {-19.21, -5.26}, points = {{-52.1499, 33.1499}, {-52.1499, -22.8501}, {47.8501, -22.8501}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {76.23, -10.29}, points = {{-5.8536, 6.20711}, {16.1464, 6.20711}}), Line(origin = {80.3295, -6.61265}, points = {{-6, 0}, {8, 0}}), Line(origin = {82.0695, -9.45093}, points = {{-4, 0}, {4, 0}}), Line(origin = {-91.82, -9.66}, points = {{0.1464, 6.20711}, {12.1464, 6.20711}}), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-60, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Text(origin = {-64, 92}, extent = {{-12, 8}, {12, -8}}, textString = "k"), Rectangle(origin = {-19, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Line(origin = {-19.08, -71.19}, points = {{-16.916, 3.19338}, {17.084, 3.19338}}), Line(origin = {-17.1554, -72.7022}, points = {{-16.916, 3.19338}, {-6.916, 3.19338}}), Line(origin = {-15.2309, -74.0769}, points = {{-16.916, 3.19338}, {-10.916, 3.19338}}), Text(origin = {-17, -76}, rotation = 90, extent = {{-5, -16}, {5, 0}}, textString = "8"), Text(origin = {46, 59}, extent = {{-70, 29}, {70, -29}}, textString = "Mass, Inertia, 
  Floatation
  Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-47, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-61, 58}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-75, 58}, extent = {{-5, 10}, {5, -10}}, textString = "R")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition.&nbsp;</font></div><div><font face=\"MS Shell Dlg 2\">The phisics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and apply the displacement force.&nbsp;</font></div><div><font face=\"MS Shell Dlg 2\">Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><br></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Limitations:</u></div><div><br></div><div>Only small movements of heel and trim are implemented, capsizing or similar situations should arise simulation errors.&nbsp;</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Principles] Edward V. Lewis et al, \"Princiles of Naval Architecture\",&nbsp;</span><em style=\"font-family: 'MS Shell Dlg 2';\">SNAME</em><span style=\"font-family: 'MS Shell Dlg 2';\">, Second Revision, 1988</span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\">[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.1 (14/02/2023): Renovated icon and integration of ship data connector</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0 (17/06/2022): Initial release</span></body></html>"),
          Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
      end ShipModelTh;

      model HidrodynamicXYY
        parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
          Dialog(group = "Hidrostatics Properties"));
        parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
          Dialog(group = "Hidrostatics Properties"));
        parameter Modelica.SIunits.Length Draft = 4 " Mean moulded draft [m]" annotation(
          Dialog(group = "Hidrostatics Properties"));
        parameter Modelica.SIunits.Density Dens = 1025 "Seawater density [kg/m3]" annotation(
          Dialog(group = "Hidrostatics Properties"));
        parameter Real Cb = 0.693 "Ship block coefficient [-]" annotation(
          Dialog(group = "Hidrostatics Properties"));
        parameter Modelica.SIunits.Length Xg = 0.364 "Distance from Lpp/2 to CoG, positive fwd [m]" annotation(
          Dialog(group = "Hidrostatics Properties"));
        //Added Mass parameters
        parameter Real mx = 1/100*(0.398 + 11.97*Cb*(1 + 3.73*Draft/B) + 2.89*Cb*(Lpp/B)*(1 + 1.13*Draft/B) + 0.175*Cb*(1 + 0.54*Draft/B)*(Lpp/B)^2 - 1.107*(Lpp/B)*(Draft/B)) "Added Mass parameter X direction *(around 5%)" annotation(
          Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
        parameter Real my = (0.882 - 0.54*Cb*(1 - 1.6*Draft/B) - 0.156*(1 - 0.673*Cb)*Lpp/B + 0.826*(Draft/B)*(Lpp/B)*(1 - 0.678*Draft/B) - 0.638*Cb*(Draft/B)*(Lpp/B)*(1 - 0.669*Draft/B)) "Added Mass parameter Y direction" annotation(
          Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
        parameter Real Jz = (Lpp/100*(33 - 76.85*Cb*(1 - 0.784*Cb) + 3.43*(Lpp/B)*(1 - 0.63*Cb)))^2 "Added Mass parameter Yaw direction" annotation(
          Dialog(tab = "Added Mass Parameters", group = "Added Mass"));
        //ERROR: en MANSIN Usan 1/100 en lugar de Lpp/100"
        //Damping parameters
        parameter Real Resistance_Curve[:, 2] = {{9.1437e2, 3}, {-5.2863e3, 2}, {1.9657e4, 1}} "Resistance Vs Speed curve [N vs m/s]" annotation(
          Dialog(tab = "Resistance", group = "Resistance"));
        //X_Hull
        parameter Real X_vv = (1.15*Cb*B/Lpp - 0.18)*Draft/Lpp "Yoshimura and Masumoto (2011)" annotation(
          Dialog(tab = "Damping Parameters", group = "X_Hull"));
        parameter Real X_vvvv = (-6.68*Cb*B/Lpp + 1.1)*Draft/Lpp "Yoshimura and Masumoto (2011)" annotation(
          Dialog(tab = "Damping Parameters", group = "X_Hull"));
        parameter Real X_rr = (-0.0027 + 0.0076*Cb*Draft/B) "Lee and Shin (1998) *" annotation(
          Dialog(tab = "Damping Parameters", group = "X_Hull"));
        parameter Real X_vr = -0.117*my/100*(0.5 + Cb) "Lee and Shin (1998) *" annotation(
          Dialog(tab = "Damping Parameters", group = "X_Hull"));
        //Y_Hull
        parameter Real Y_v = (-Modelica.Constants.pi*(Draft/Lpp)^2*(1 + 0.4*Cb*B/Draft)) "Clarke et al. (1982)" annotation(
          Dialog(tab = "Damping Parameters", group = "Y_Hull"));
        parameter Real Y_vvv = (-0.6469*(1 - Cb)*(Draft/B) + 0.0027) "Lee and Shin (1998)" annotation(
          Dialog(tab = "Damping Parameters", group = "Y_Hull"));
        parameter Real Y_r = (-Modelica.Constants.pi*(Draft/Lpp)^2*(-0.32)) "Smitt (1970)" annotation(
          Dialog(tab = "Damping Parameters", group = "Y_Hull"));
        parameter Real Y_rrr = (-0.0233*Cb*Draft/B + 0.0063) "Lee and Shin (1998)" annotation(
          Dialog(tab = "Damping Parameters", group = "Y_Hull"));
        parameter Real Y_vrr = -(5.95*(1 - Cb)*Draft/B)*Draft/Lpp "Kijima et al. (1990a)" annotation(
          Dialog(tab = "Damping Parameters", group = "Y_Hull"));
        parameter Real Y_vvr = (1.5*Draft*Cb/B - 0.65)*Draft/Lpp "Kijima et al. (1990a)" annotation(
          Dialog(tab = "Damping Parameters", group = "Y_Hull"));
        //N_Hull
        parameter Real N_v = (-Modelica.Constants.pi*(Draft/Lpp)^2*(0.5 + 2.4*Draft/Lpp)) "Clarke et al. (1982)" annotation(
          Dialog(tab = "Damping Parameters", group = "N_Hull"));
        parameter Real N_vvv = (0.0348 - 0.5283*(1 - Cb)*Draft/B) "Lee and Shin (1998)" annotation(
          Dialog(tab = "Damping Parameters", group = "N_Hull"));
        parameter Real N_r = -Modelica.Constants.pi*(Draft/Lpp)^2*((1.3192 - 0.68228*Cb - 0.00019*(Lpp/Draft)^2)/Modelica.Constants.pi) "Khattab (1984)" annotation(
          Dialog(tab = "Damping Parameters", group = "N_Hull"));
        parameter Real N_rrr = (0.25*Cb*B/Lpp - 0.056)*(Draft/Lpp) "Yoshimura and Masumoto (2011)" annotation(
          Dialog(tab = "Damping Parameters", group = "N_Hull"));
        parameter Real N_vrr = ((0.5*Draft*Cb/B) - 0.05)*(Draft/Lpp) "Kijima et al. (1990a)" annotation(
          Dialog(tab = "Damping Parameters", group = "N_Hull"));
        parameter Real N_vvr = -(57.5*(Cb*B/Lpp)^2 - 18.4*(Cb*B/Lpp) + 1.6)*(Draft/Lpp) "Kijima et al. (1990a)" annotation(
          Dialog(tab = "Damping Parameters", group = "N_Hull"));
        //Componentes
        ShipSIM.SubComponents.VariableTranslation AddMass_CoF annotation(
          Placement(visible = true, transformation(origin = {-40, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque AddMass_ForceTorque(animation = false, forceColor = {0, 255, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {0, 255, 255}) annotation(
          Placement(visible = true, transformation(origin = {-2, 38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        ShipSIM.Interfaces.ShipData shipData annotation(
          Placement(visible = true, transformation(origin = {102, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        ShipSIM.SubComponents.VariableTranslation Damping_CoF annotation(
          Placement(visible = true, transformation(origin = {-42, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque Damping_ForceTorque(animation = true, forceColor = {255, 0, 0}, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b, torqueColor = {255, 0, 255}) annotation(
          Placement(visible = true, transformation(origin = {-6, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        //Variables
        Real v;
        Real r;
        Real U;
        Real NonDimXY;
        Real NonDimN;
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
          Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      protected
        Real Res_Curve[size(Resistance_Curve, 1)];
      equation
//
//ADDED MASS
//
        AddMass_CoF.r_vect = {shipData.CoG[1], shipData.CoG[2], shipData.Draft/2} "Centro de fuerzas de inercia de masa añadida";
// Ecuaciones obtenidas de: Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics, Jialun Liu
        AddMass_ForceTorque.force[1] = -shipData.Displacement*(mx*der(shipData.LinearSpeed[1]) - my*shipData.LinearSpeed[2]*shipData.AngularSpeed[3]);
        AddMass_ForceTorque.force[2] = -shipData.Displacement*(my*der(shipData.LinearSpeed[2]) + mx*shipData.LinearSpeed[1]*shipData.AngularSpeed[3]);
        AddMass_ForceTorque.force[3] = 0;
        AddMass_ForceTorque.torque[1] = 0;
        AddMass_ForceTorque.torque[2] = 0;
        AddMass_ForceTorque.torque[3] = -shipData.Displacement*Jz*der(shipData.AngularSpeed[3]);
        connect(frame_a, AddMass_CoF.frame_a) annotation(
          Line(points = {{-100, 0}, {-86, 0}, {-86, 38}, {-50, 38}}));
        connect(AddMass_CoF.frame_b, AddMass_ForceTorque.frame_b) annotation(
          Line(points = {{-30, 38}, {-12, 38}}, color = {95, 95, 95}));
        connect(AddMass_ForceTorque.frame_resolve, frame_a) annotation(
          Line(points = {{-2, 48}, {-51, 48}, {-51, 58}, {-100, 58}, {-100, 0}}, color = {95, 95, 95}));
//
//DAMPING
//
// Ecuaciones obtenidas de Taimuri "A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters", Ocean Engineering 218 (2020)
//Resistance Curve
        for i in 1:size(Res_Curve, 1) loop
          Res_Curve[i] = Resistance_Curve[i, 1]*abs(shipData.LinearSpeed[1])^Resistance_Curve[i, 2];
        end for;
//End
        Damping_CoF.r_vect = {Lpp/2, 0, shipData.Draft/2} "Centro de fuerzas de Damping";
//MMG model
//Variables
        U = (shipData.LinearSpeed[1]^2 + shipData.LinearSpeed[2]^2)^0.5 "Velocidad";
        if noEvent((U^2) < 0.01) then
//Evita division por cero
          NonDimXY = 0.5*Dens*0.01^2*Lpp^2 "non-dimensionalization for X and Y";
          NonDimN = 0.5*Dens*0.01^2*Lpp^3 "non-dimensionalization for Yaw";
          v = 0 "non-dimensional Sway";
          r = shipData.AngularSpeed[3]*Lpp/0.01 "non-dimensional Yaw";
        else
          NonDimXY = 0.5*Dens*U^2*Lpp^2 "non-dimensionalization for X and Y";
          NonDimN = 0.5*Dens*U^2*Lpp^3 "non-dimensionalization for Yaw";
          v = shipData.LinearSpeed[2]/U "non-dimensional Sway";
          r = shipData.AngularSpeed[3]*Lpp/U "non-dimensional Yaw";
        end if;
//Fuerzas
        Damping_ForceTorque.force[1] = (-1*sign(shipData.LinearSpeed[1])*sum(Res_Curve)) + NonDimXY*(X_vv*v^2 + X_vvvv*v^4 + X_rr*r^2 + X_vr*v*r);
        Damping_ForceTorque.force[2] = NonDimXY*(Y_v*v + Y_vvv*v^3 + Y_r*r + Y_rrr*r^3 + Y_vrr*v*r^2 + Y_vvr*v^2*r);
        Damping_ForceTorque.force[3] = 0;
        Damping_ForceTorque.torque[1] = 0;
        Damping_ForceTorque.torque[2] = 0;
        Damping_ForceTorque.torque[3] = NonDimN*(N_v*v + N_vvv*v^3 + N_r*r + N_rrr*r^3 + N_vrr*v*r^2 + N_vvr*v^2*r);
        connect(Damping_CoF.frame_b, Damping_ForceTorque.frame_b) annotation(
          Line(points = {{-32, -20}, {-16, -20}}, color = {95, 95, 95}));
        connect(Damping_ForceTorque.frame_resolve, frame_a) annotation(
          Line(points = {{-6, -10}, {-6, 0}, {-100, 0}}, color = {95, 95, 95}));
        connect(frame_a, Damping_CoF.frame_a) annotation(
          Line(points = {{-100, 0}, {-86, 0}, {-86, -20}, {-52, -20}}));
        annotation(
          Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-60, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Polygon(origin = {-70, 93}, lineThickness = 0.5, points = {{0, 3}, {-4, -5}, {4, -5}, {0, 3}}), Text(origin = {-56, 94}, extent = {{-8, 10}, {8, -10}}, textString = "m"), Text(origin = {-75, 74}, extent = {{-5, 10}, {5, -10}}, textString = "X"), Text(origin = {-6, 58}, textColor = {200, 200, 200}, extent = {{-14, 10}, {14, -10}}, textString = "P"), Text(origin = {-20, 58}, textColor = {200, 200, 200}, extent = {{-14, 10}, {14, -10}}, textString = "R"), Text(origin = {-5, 92}, extent = {{-5, 8}, {5, -8}}, textString = "D"), Text(origin = {-6, 74}, extent = {{-14, 10}, {14, -10}}, textString = "Y"), Rectangle(origin = {-6, 66}, extent = {{-24, 18}, {24, -18}}, radius = 5), Text(origin = {-20, 74}, extent = {{-14, 10}, {14, -10}}, textString = "X"), Text(origin = {8, 74}, textColor = {200, 200, 200}, extent = {{-14, 10}, {14, -10}}, textString = "Z"), Text(origin = {8, 58}, extent = {{-14, 10}, {14, -10}}, textString = "Y"), Polygon(origin = {7, 6}, rotation = 35, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-63, 20}, {-63, -20}, {25, -20}, {39, -18}, {47, -16}, {53, -14}, {59, -10}, {63, -4}, {64, 0}, {63, 4}, {59, 10}, {53, 14}, {47, 16}, {39, 18}, {25, 20}, {-63, 20}}), Line(origin = {32.1218, 51.7006}, rotation = 35, points = {{-53.6268, 17.0932}, {-52.1499, -22.8501}, {37.8554, -23.1764}}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {2.82808, 3.00096}, points = {{-11.1708, 4.82918}, {-11.1708, 4.82918}, {-11.1708, 0.82918}, {-9.17082, -5.17082}, {-3.17082, -9.17082}, {2.82918, -9.17082}, {6.82918, -7.17082}, {8.82918, -5.17082}, {10.8292, -1.17082}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Rectangle(origin = {-19, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Line(origin = {-19.08, -71.19}, points = {{-16.916, 3.19338}, {17.084, 3.19338}}), Text(origin = {-17, -76}, rotation = 90, extent = {{-5, -16}, {5, 0}}, textString = "8"), Line(origin = {-17.1554, -72.7022}, points = {{-16.916, 3.19338}, {-6.916, 3.19338}}), Line(origin = {-15.2309, -74.0769}, points = {{-16.916, 3.19338}, {-10.916, 3.19338}}), Text(origin = {78, -47}, extent = {{-70, 25}, {70, -25}}, textString = "Hydrodyn.
  Forces", horizontalAlignment = TextAlignment.Left), Text(origin = {-61, 74}, extent = {{-5, 10}, {5, -10}}, textString = "Y"), Text(origin = {-47, 74}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "Z"), Text(origin = {-75, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "R"), Text(origin = {-61, 58}, textColor = {200, 200, 200}, extent = {{-5, 10}, {5, -10}}, textString = "P"), Text(origin = {-47, 58}, extent = {{-5, 10}, {5, -10}}, textString = "Y")}),
          Documentation(info = "<html><head></head><body><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2';\">HidrodynamicXYY provides hidrodynamic forces of Surge (X) , Sway (Y) and Yaw (Y) based on MMG standard method for ship maneuvering predictions.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div style=\"font-family: 'MS Shell Dlg 2';\">Current default equations for maneuvring parameters are based on empirical relations developed by various authors and referenced on [Jialun2020] and [Taimuri2020].</div><div style=\"font-family: 'MS Shell Dlg 2';\"><u><br></u></div><div style=\"font-family: 'MS Shell Dlg 2';\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2';\">Empirical equations provided as default parameters are only adequate for medium and large single propeller and rudder ships.</div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div>[Yasukawa2015]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Ghalib Taimuri et al, \"Introduction of MMG standard method for ship maneuvering predictions\", Journal of Marine Science and Technology, 20, 37-52, 2015, <a href=\"https://link.springer.com/article/10.1007/s00773-014-0293-y\">https://link.springer.com/article/10.1007/s00773-014-0293-y</a></div><div><u><br></u></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Jialun2020] Jialun Liu, \"Mathematical Modeling of Inland Vessel Maneuverability Considering Rudder Hydrodynamics\", Springer 2020,&nbsp;</span><a href=\"https://doi.org/10.1007/978-3-030-47475-1\" style=\"font-family: 'MS Shell Dlg 2';\">https://doi.org/10.1007/978-3-030-47475-1</a></div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">[Taimuri2020] Ghalib Taimuri et al, \"A 6-DoF maneuvering model for the rapid estimation of hydrodynamic actions in deep and shallow waters\", Journal of Ocean Engineering, 2020,&nbsp;</span><a href=\"https://doi.org/10.1016/j.oceaneng.2020.108103\" style=\"font-family: 'MS Shell Dlg 2';\">https://doi.org/10.1016/j.oceaneng.2020.108103</a></div><div style=\"font-family: -webkit-standard;\"><br></div><div style=\"font-family: -webkit-standard;\">[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><font face=\"MS Shell Dlg 2\">mx, X_rr, X_vr factors need to be revised due differences detected during validation against [Taimuri2020]</font></div><div style=\"font-family: 'MS Shell Dlg 2';\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div></div></body></html>", revisions = "<html><head></head><body><div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.1 (14/02/2023): First official release</span></div><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0 (27/01/2023): Initial release</span></body></html>"));
      end HidrodynamicXYY;
      annotation(
        Icon(graphics = {Polygon(origin = {0, 3}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}})}));
    end Ship;

    package Propulsion
      model Propeller1Q "Wageningen B-Series Propeller model"
        constant Real Pi = 3.14159265359;
        parameter Real Diameter(unit = "m") = 4 "Propeller Diameter [m]" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Real Z = 4 "Number of blades" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Real P_D = 1 "Pitch-diameter ratio" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Real Ae_Ao = 0.3 "Blade area ratio" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Modelica.SIunits.Density Density_Prop = 7600 "Propeller density [kg/m3]" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Real Inertia(unit = "kg.m2") = 0.0002744*Ae_Ao*(Ae_Ao + 3)*Density_Prop*Diameter^5 "Inertia moment of propeller" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Real Add_Inertia(unit = "kg.m2") = 0.3*Inertia "Added (water) Inertia moment of propeller" annotation(
          Dialog(group = "Propeller parameters"));
        parameter Real d(unit = "kg/m3") = 1025 "Water density" annotation(
          Dialog(tab = "Environmental", group = "Sea Water"));
        parameter Real w_ini(unit = "rad/s") = 0.1 "initial speed" annotation(
          Dialog(tab = "Initialization", group = "Speed"));
        parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
          Dialog(group = "Ship parameters"));
        parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
          Dialog(group = "Ship parameters"));
        parameter Real Cb = 0.693 "Ship block coefficient [-]" annotation(
          Dialog(group = "Ship parameters"));
        parameter Real Cp = 0.75 "Ship prismatic coefficient [-]" annotation(
          Dialog(group = "Ship parameters"));
        parameter Real lcb = -0.75 "%lcb from Lpp/2 (0.75% Aft -> -0.75), positive fwd" annotation(
          Dialog(group = "Ship parameters"));
        parameter Real Fa = -2 "Aft body factor [-2 (U shape),0 (N shape),+2 (V shape)]" annotation(
          Dialog(group = "Ship parameters"));
        parameter Modelica.SIunits.Length Rudder_distance = Diameter*1.2 "Distance from propeller to rudder denter of gravity" annotation(
          Dialog(group = "Rudder interaction"));
        parameter Real WakeFraction = 0.1*B/Lpp + 0.149 + (((0.05*B)/(Lpp)) + 0.449)/((585 - 5027*B/Lpp + 11700*((B/Lpp)^2))*(0.98 - Cb)^3 + 1) + 0.025*Fa/(100*(Cb - 0.7)^2 + 1) - 0.18 + (0.00756/((Diameter/Lpp) + 0.002)) "Harvald 1983 - Single screw" annotation(
          Dialog(tab = "Factors", group = "Propeller-hull factors"));
        parameter Real ThrustDeduction = (0.625*B/Lpp + 0.08) + (0.165 - 0.25*B/Lpp)/((525 - 8060*B/Lpp + 20300*(B/Lpp)^2)*(0.98 - Cb)^3 + 1) - 0.01*Fa + 2*(Diameter/Lpp - 0.04) "Harvald 1983 - Single screw" annotation(
          Dialog(tab = "Factors", group = "Propeller-hull factors"));
        parameter Real RotativeRelative = 0.9922 - 0.05908*Ae_Ao + 0.07424*(Cp - 0.0225*lcb) "Holtrop 1988a - Single screw" annotation(
          Dialog(tab = "Factors", group = "Propeller-hull factors"));
        //parameter Real ShaftEfficiency=0.98 "0.98 direct coupling / 0.96-0.97 with gearbox" annotation(Dialog(tab = "Factors", group = "Efficiencies"));
        Modelica.SIunits.Velocity ShipSpeed "Ship speed [m/s]";
        Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
          Placement(visible = true, transformation(origin = {-50, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Inertia inertia(J = Inertia, w(fixed = false, start = w_ini)) annotation(
          Placement(visible = true, transformation(origin = {34, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Interfaces.Flange_a flange annotation(
          Placement(visible = true, transformation(origin = {80, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Real J(start = 0) "Advance ratio";
        Real Kt "Thrust coefficient";
        Real Kq "Torque coefficient";
        Real Thrust_Kt(unit = "N") "Thrust obtained by open water";
        Real Torque_Kq(unit = "N.m") "Torque obtained by open water";
        Real rpm(unit = "rpm") "Revolutions per minute";
        Real Nu_zero "Open water efficiency";
        Real Nu_b "Propeller efficiency - behind hull";
        Real Nu_hull "Hull efficiency = 1-t/1-w";
        Real Nu_propulsive "Overall propulsive efficiency";
        Real AdvanceSpeed(unit = "m/s") "Advance speed";
        Real ThrustPower(unit = "W");
        Real Thrust(unit = "N");
        Real ShaftPower(unit = "W");
        // Parámetros interaccion con el timón: Brix, J.E., 1993. Manoeuvring Technical Manual. Seehafen-Verl., Hamburg
        Real C_th;
        Modelica.SIunits.Velocity V_inf;
        Modelica.SIunits.Length r_inf;
        Modelica.SIunits.Length r_x;
        Modelica.SIunits.Length V_x;
        Modelica.SIunits.Length Delta_r;
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
          Placement(visible = true, transformation(origin = {80, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {80, 32}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque ForceTorque_Ship(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(
          Placement(visible = true, transformation(origin = {26, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Components.Inertia added_inertia(J = Add_Inertia) annotation(
          Placement(visible = true, transformation(origin = {-4, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
          Placement(visible = true, transformation(origin = {28, -38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput Propeller_flow_diameter annotation(
          Placement(visible = true, transformation(origin = {-78, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-83, 40}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput Propeller_speed annotation(
          Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-83, 0}, extent = {{7, -7}, {-7, 7}}, rotation = 0)));
      equation
        ShipSpeed = absoluteVelocity.v[1];
//Calculation of propeller openwater characteristic
        AdvanceSpeed = ShipSpeed*(1 - WakeFraction);
        J = AdvanceSpeed/(der(flange.phi)*(1/(2*Pi))*Diameter);
        (Kt, Kq) = ShipSIM.Functions.WageningenB_Kt_Kq(J, P_D, Ae_Ao, Z);
        Kt = Thrust_Kt/(d*(der(flange.phi)*(1/(2*Pi)))^2*Diameter^4);
        Kq = Torque_Kq/(d*(der(flange.phi)*(1/(2*Pi)))^2*Diameter^5);
        Nu_zero = J/(2*Pi)*(Kt/Kq);
/*
        This model calculates the following efficiencies:
        - Nu_b: propeller efficiency behind hull
        - Nu_hull: hull efficiency
        - Nu_propulsive: overall propulsive efficiency
        */
//Efficiencies
        Nu_b = Nu_zero*RotativeRelative;
        Nu_hull = (1 - ThrustDeduction)/(1 - WakeFraction);
        Nu_propulsive = Nu_b*Nu_hull;
//Thrust and torque
        Thrust = Thrust_Kt*(1 - ThrustDeduction);
        ThrustPower = ShaftPower*Nu_propulsive;
        rpm = der(flange.phi)*(1/(2*Pi))*60;
        ThrustPower = Thrust*ShipSpeed;
        ShaftPower = der(flange.phi)*torque.tau;
        ForceTorque_Ship.force = {Thrust, 0, 0};
        ForceTorque_Ship.torque = {torque.tau, 0, 0};
//Rudder interaction: Brix, J.E., 1993. Manoeuvring Technical Manual. Seehafen-Verl., Hamburg
        C_th = (8*(der(flange.phi))^2*Diameter^2*Kt/(Modelica.Constants.pi*AdvanceSpeed^2))^0.5;
        V_inf = AdvanceSpeed*(1 + C_th)^0.5;
        r_inf = (Diameter/2)*(0.5*(1 + AdvanceSpeed/V_inf))^0.5;
        r_x = (Diameter/2)*(0.14*(r_inf/(Diameter/2))^3 + (r_inf/(Diameter/2))*(Rudder_distance/(Diameter/2))^1.5)/(0.14*(r_inf/(Diameter/2))^3 + (Rudder_distance/(Diameter/2))^1.5);
        V_x = V_inf*(r_inf/r_x)^2;
// Correccion por turbulencias y resultado final
        Delta_r = 0.15*Rudder_distance*((V_inf*r_inf^2 - AdvanceSpeed*r_x^2)/(V_inf*r_inf^2 + AdvanceSpeed*r_x^2));
        Propeller_flow_diameter = 2*(r_x + Delta_r);
        Propeller_speed = (V_x - AdvanceSpeed)*(r_x^2/(r_x + Delta_r)^2) + AdvanceSpeed;
        connect(flange, inertia.flange_b) annotation(
          Line(points = {{80, 34}, {58, 34}, {58, 66}, {44, 66}}));
        connect(ForceTorque_Ship.frame_b, frame_a) annotation(
          Line(points = {{36, 0}, {59, 0}, {59, 2}, {80, 2}}, color = {95, 95, 95}));
        connect(added_inertia.flange_b, inertia.flange_a) annotation(
          Line(points = {{6, 66}, {24, 66}}));
        connect(torque.flange, added_inertia.flange_a) annotation(
          Line(points = {{-40, 66}, {-14, 66}}));
        connect(frame_a, absoluteVelocity.frame_a) annotation(
          Line(points = {{80, 2}, {64, 2}, {64, -38}, {38, -38}}));
        annotation(
          Icon(graphics = {Text(origin = {0, 70}, extent = {{-94, 10}, {94, -10}}, textString = "B-Series"), Polygon(origin = {23, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {26, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Ellipse(origin = {24, 0}, rotation = -45, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{2, 22}, {-2, -22}}), Rectangle(origin = {61, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{19, 6}, {-19, -6}}), Line(origin = {-30, 40}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.9957, 19.9494}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -0.101291}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-30, -19.8062}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7), Line(origin = {-29.6543, -39.8569}, points = {{24, 0}, {-30, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 7)}, coordinateSystem(extent = {{-80, -80}, {80, 80}})),
          Diagram(coordinateSystem(extent = {{-80, -80}, {80, 80}})),
          Documentation(info = "<html><head></head><body><div>Ship propeller model (1 quadrant) based on Kt, Kq curves according to Wageningen B-Series curves.&nbsp;</div><div>This model has incorporated empirical values of the following parameters:</div><div>- Rotative relative efficiency</div><div>- Thrust deduction coefficient</div><div>- Wake factor coefficient</div><div><br></div><div>Output is the thrust force of the propeller and mechanical torque on the shaft.</div><div><br></div><div><i><b>NOTE</b></i>:</div><div>Torque does not include shaft efficiency.</div><div>Thrust output value is effective thrust to be compared directly to the resistance curve.</div><div><br></div><div><u>Limitations</u>:</div><div><br></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><u>References</u>:</div><div><br></div><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Oosterveld1975] M.W.C. Oosterveld and P. Van Oossanen, \"Further computer-analyzed data of the wageningen B-screw series\", International Shipbuilding Progress, Vol. 22, No. 251, July 1975</span></div><p>[Harvald1983]&nbsp;Harvald S.A., \"Resistance and Propulsion of Ships\", Wiley 1983, ISBN 0-89464-754-7</p><p>[Holtrop1984]&nbsp;Holtrop J., \"A Statistical Re-analysis of Resistance and Propulsion Data\", ISP, Vol.31</p><p>[Brix1993]<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Brix J., \"Manoeuvring technical manual\", Hamburg: Seehafen Verlag</p><p><u>Know issues</u>:</p><div>- Only works with forward speed and J&gt;0. The other three quadrants are not developed.</div><div><br></div><div><u>Further development</u>:</div><div><br></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div><div>- Cavitation warning</div></body></html>", revisions = "<html><head></head><body><div>Rev. 0.1 (14-02-2023): Major changes</div><div>Rev. 0.0 (11-08-2021): Initial release</div></body></html>"));
      end Propeller1Q;

      model Rudder "Rudder model"
        parameter Real C(unit = "m") = 3 "Chord [m]";
        parameter Real s(unit = "m") = 4 "spam [m]";
        parameter Real VC(unit = "m2/s") = 0.000001004 "cinematic viscosity [m2/s]";
        parameter Real dens(unit = "Kg/m3") = 1025 "Density of the water";
        parameter Real InitialRudderAngle(unit = "deg") = 0 "Initial rudder position [deg, +Port]";
        parameter Real CenterOfForces[3](each unit = "m") = {0.05*C, 0, -s/2} "Center of rudder forces from frame_a [m] {x,y,z}";
        parameter Real MaxRudderAngle(unit = "deg") = 35 "Maximum rudder angle [deg]";
        parameter Real MaxRudderAngularSpeed(unit = "deg/s") = 2.5 "Maximum rudder angular speed [deg/s]";
        //Visualizadores
        Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrame(animation = true, length = 2) annotation(
          Placement(visible = true, transformation(origin = {-10, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Visualizers.FixedShape RudderVisualizer(animation = true, height = s, length = C, width = 0.18*C) annotation(
          Placement(visible = true, transformation(origin = {-8, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        //Componentes
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation Forces_pos(animation = false, r = CenterOfForces) annotation(
          Placement(visible = true, transformation(origin = {0, 16}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Nonlinear.Limiter RudderAngleLimiter(limitsAtInit = true, strict = true, uMax = MaxRudderAngle) annotation(
          Placement(visible = true, transformation(origin = {-72, 76}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
        Modelica.Blocks.Nonlinear.SlewRateLimiter RudderSpeedLimiter(Rising = MaxRudderAngularSpeed, initType = Modelica.Blocks.Types.Init.InitialState, strict = true, y_start = InitialRudderAngle) annotation(
          Placement(visible = true, transformation(origin = {-28, 76}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
        Modelica.Mechanics.Rotational.Sources.Position Rudder_angle(exact = true, useSupport = true) annotation(
          Placement(visible = true, transformation(origin = {42, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Joints.Revolute Servo(animation = false, n = {0, 0, 1}, phi(fixed = false, start = 0), useAxisFlange = true) annotation(
          Placement(visible = true, transformation(origin = {40, 46}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Math.Gain Deg_to_Rad(k = -0.01745329252) annotation(
          Placement(visible = true, transformation(origin = {10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
          Placement(visible = true, transformation(origin = {100, 46}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {28, 100}, extent = {{-16, -16}, {16, 16}}, rotation = 90)));
        Modelica.Blocks.Interfaces.RealInput Rudder_Order annotation(
          Placement(visible = true, transformation(origin = {-103, 75}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-99, 93}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput Rudder_position annotation(
          Placement(visible = true, transformation(origin = {-92, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-103, 75}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForce F_Drag(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve) annotation(
          Placement(visible = true, transformation(origin = {-56, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldForce F_Lift(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve) annotation(
          Placement(visible = true, transformation(origin = {-56, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Mechanics.MultiBody.Forces.WorldTorque M_Moment(animation = false, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve) annotation(
          Placement(visible = true, transformation(origin = {-56, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        //Variables públicas
        Modelica.SIunits.Velocity WaterSpeed "Water speed [m/s]";
        Modelica.SIunits.Angle Beta "Attack angle";
        Real Sign "Sign of the attack angle";
        Real Re "Reynolds number of the rudder";
        Modelica.SIunits.Angle Alpha = -Rudder_angle.phi_ref "Actual rudder angle [rad]";
        Real Cd "Drag coefficient";
        Real Cl "Lift coefficient";
        Real Cm "Moment coefficient";
        Real Drag "Drag Force";
        Real Lift "Lift Force";
        Real Moment "Moment";
        Real Drag_Vect[2] "Normalized vector of drag";
        Real Lift_Vect[2] "Normalized vector of lift";
        Real Water_Speed_XY[2];
        Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
          Placement(visible = true, transformation(origin = {88, -14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        Modelica.Mechanics.MultiBody.Parts.FixedTranslation Rudder_center(animation = false, r = CenterOfForces) annotation(
          Placement(visible = true, transformation(origin = {88, 16}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
        Modelica.Blocks.Interfaces.RealInput Propeller_speed annotation(
          Placement(visible = true, transformation(origin = {96, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {95, 0}, extent = {{9, -9}, {-9, 9}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput Propeller_flow_diameter annotation(
          Placement(visible = true, transformation(origin = {96, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {95, 40}, extent = {{-9, -9}, {9, 9}}, rotation = 180)));
      protected
        parameter Real Surf(unit = "m2") = C*s "Proyected surface of rudder";
        parameter Real Asp(unit = "") = Surf/s^2 "Aspect Ratio of the rudder";
        //Variables intermedias
        Real Beta_inter;
      equation
//Determinar velocidad absoluta
//Promedio ponderado de velocidad del agua en X
        if Propeller_flow_diameter >= s then
          Water_Speed_XY[1] = -Propeller_speed;
        else
          Water_Speed_XY[1] = -(Propeller_speed*Propeller_flow_diameter + absoluteVelocity.v[1]*(s - Propeller_flow_diameter))/s;
        end if;
        Water_Speed_XY[2] = -absoluteVelocity.v[2];
        WaterSpeed = (Water_Speed_XY[1]^2 + Water_Speed_XY[2]^2)^0.5;
        Re = WaterSpeed*C/VC;
        if noEvent(WaterSpeed > 0) then
//Determinar el ángulo de ataque
          Beta_inter = (Water_Speed_XY[1]*(-Modelica.Math.cos(Alpha)) + Water_Speed_XY[2]*(-Modelica.Math.sin(Alpha)))/WaterSpeed;
// Evitar errores al acercarse a 1 y -1
          if Beta_inter <= (-0.9999999) then
            Beta = Modelica.Math.acos(-1);
          elseif Beta_inter >= 0.9999999 then
            Beta = Modelica.Math.acos(1);
          else
            Beta = Modelica.Math.acos(Beta_inter);
          end if;
          if Water_Speed_XY[1]*(-Modelica.Math.sin(Alpha)) - Water_Speed_XY[2]*(-Modelica.Math.cos(Alpha)) >= 0 then
            Sign = -1;
          else
            Sign = 1;
          end if;
//Determinar Cl, Cd, y Cm
          (Cl, Cd, Cm) = ShipSIM.Functions.NACA0018(Beta, Re, Asp);
//Calcular fuerzas y momentos
          Drag = Cd*0.5*dens*Surf*WaterSpeed^2;
          Lift = Cl*0.5*dens*Surf*WaterSpeed^2;
          Moment = Cm*0.5*dens*Surf*C*WaterSpeed^2;
//Trasladarlas al eje de coordenadas del timón y aplicarlas
          Drag_Vect = Water_Speed_XY/WaterSpeed "Vector normalizado con la direccion del agua (misma dirección que drag)";
          Lift_Vect = {-Drag_Vect[2], Drag_Vect[1]}*Sign "Vector normalizado perpendicular a la direccion del agua, ajustado con la direccion";
          F_Drag.force = {Drag*Drag_Vect[1], Drag*Drag_Vect[2], 0};
          F_Lift.force = {Lift*Lift_Vect[1], Lift*Lift_Vect[2], 0};
          M_Moment.torque = {0, 0, Moment*Sign};
        else
//si la velocidad es cero
          Sign = 1;
          Beta = 0;
          Cd = 0;
          Cl = 0;
          Cm = 0;
          Drag = 0;
          Lift = 0;
          Moment = 0;
          Drag_Vect = {0, 0};
          Lift_Vect = {0, 0};
          F_Drag.force = {0, 0, 0};
          F_Lift.force = {0, 0, 0};
          M_Moment.torque = {0, 0, 0};
          Beta_inter = 0;
        end if;
//Conexiones
        connect(Rudder_angle.phi_ref, Deg_to_Rad.y) annotation(
          Line(points = {{30, 76}, {21, 76}}, color = {0, 0, 127}));
        connect(Rudder_angle.flange, Servo.support) annotation(
          Line(points = {{52, 76}, {58, 76}, {58, 56}, {46, 56}}));
        connect(Rudder_angle.support, Servo.axis) annotation(
          Line(points = {{42, 66}, {42, 61}, {40, 61}, {40, 56}}));
        connect(Servo.frame_b, Forces_pos.frame_a) annotation(
          Line(points = {{30, 46}, {29, 46}, {29, 16}, {10, 16}}));
        connect(fixedFrame.frame_a, Forces_pos.frame_b) annotation(
          Line(points = {{-20, -16}, {-29, -16}, {-29, 16}, {-10, 16}}, color = {95, 95, 95}));
        connect(RudderSpeedLimiter.y, Deg_to_Rad.u) annotation(
          Line(points = {{-13, 76}, {-2, 76}}, color = {0, 0, 127}));
        connect(RudderAngleLimiter.y, RudderSpeedLimiter.u) annotation(
          Line(points = {{-57, 76}, {-45, 76}}, color = {0, 0, 127}));
        connect(RudderAngleLimiter.u, Rudder_Order) annotation(
          Line(points = {{-89, 76}, {-102, 76}}, color = {0, 0, 127}));
        connect(RudderSpeedLimiter.y, Rudder_position) annotation(
          Line(points = {{-13, 76}, {-8, 76}, {-8, 40}, {-92, 40}}, color = {0, 0, 127}));
        connect(F_Lift.frame_b, Forces_pos.frame_b) annotation(
          Line(points = {{-46, 16}, {-10, 16}}));
        connect(F_Drag.frame_b, Forces_pos.frame_b) annotation(
          Line(points = {{-46, -12}, {-36, -12}, {-36, 16}, {-10, 16}}, color = {95, 95, 95}));
        connect(M_Moment.frame_b, Forces_pos.frame_b) annotation(
          Line(points = {{-46, -44}, {-36, -44}, {-36, 16}, {-10, 16}}));
        connect(Servo.frame_a, frame_a) annotation(
          Line(points = {{50, 46}, {100, 46}}, color = {95, 95, 95}));
        connect(Forces_pos.frame_b, RudderVisualizer.frame_a) annotation(
          Line(points = {{-10, 16}, {-32, 16}, {-32, -48}, {-18, -48}}, color = {95, 95, 95}));
        connect(F_Lift.frame_resolve, frame_a) annotation(
          Line(points = {{-56, 6}, {-92, 6}, {-92, -90}, {72, -90}, {72, 46}, {100, 46}}));
        connect(F_Drag.frame_resolve, frame_a) annotation(
          Line(points = {{-56, -22}, {-86, -22}, {-86, -84}, {64, -84}, {64, 46}, {100, 46}}, color = {95, 95, 95}));
        connect(M_Moment.frame_resolve, frame_a) annotation(
          Line(points = {{-56, -34}, {-78, -34}, {-78, -76}, {54, -76}, {54, 46}, {100, 46}}, color = {95, 95, 95}));
        connect(frame_a, Rudder_center.frame_a) annotation(
          Line(points = {{100, 46}, {88, 46}, {88, 26}}));
        connect(Rudder_center.frame_b, absoluteVelocity.frame_a) annotation(
          Line(points = {{88, 6}, {88, -4}}, color = {95, 95, 95}));
        annotation(
          uses(Modelica(version = "3.2.3")),
          Diagram,
          Icon(graphics = {Text(origin = {-5, -88}, extent = {{67, 4}, {-67, -4}}, textString = "NACA 0018"), Polygon(origin = {-9, -4}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}}), Polygon(origin = {24, 44}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}}), Line(origin = {-42, 93.03}, points = {{-58, 0}, {48, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 14), Line(origin = {-33.74, 75.06}, points = {{-58, 0}, {48, 0}}, color = {200, 200, 200}, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 14), Line(origin = {61.7244, 19.9921}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {62, -0.142118}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.9345, -20.1318}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {62.0283, 40.05}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {62.0283, -59.9355}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {61.7244, -40.1816}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8), Line(origin = {62.0283, 59.804}, points = {{18, 0}, {-18, 0}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 8)}),
          Documentation(revisions = "<html><head></head><body><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev.0.1 (26-1-2023): Connection with propeller speed and get speed from frame.</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\"><br></span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><span style=\"font-family: -webkit-standard;\">Rev.0.0 (26-9-2022): Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></body></html>", info = "<html><head></head><body><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">Ship rudder model with the following connections:</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- frame_a: connect to the position of the rudder servo</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_Order: Desired angle of the rudder (+ stbd)</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Rudder_position: Current angle of the rudder</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_speed: connect with propeller flow speed output</span></p><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">- Propeller_flow_diameter: connect with propeller flow diameter output</span></p><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><br></div><div><i><b>NOTE</b></i>:</div><div>Water speed is obtained from rudder center of forces speed over ground and X-direction is corrected by the propeller flow.</div><div><br></div><div><u>Limitations:</u></div><div>Rudder weight and inertia is not considered.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" style=\"font-family: 'MS Shell Dlg 2';\"><tbody><tr><td>[Acorts]</td><td>Antonio Corts, \"Gemelo digital de timón y servo usando Modelica\", MSc Thesis 2022</td></tr></tbody></table></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-size: 12px;\"><div><u>Further development:</u></div><div>Correct rudder forces due to open ends of the profile.</div><div><br></div><div><div><u>Copyright:</u></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Rev.0.0: Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></div></div></div></body></html>"));
      end Rudder;
      annotation(
        Icon(graphics = {Rectangle(origin = {76, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.CrossDiag, extent = {{12, 6}, {-12, -6}}), Polygon(origin = {45, 0}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{15, 12}, {15, 26}, {5, 48}, {-7, 60}, {-13, 58}, {-15, 52}, {-15, 34}, {-1, 12}, {-1, -12}, {-15, -34}, {-15, -52}, {-13, -58}, {-7, -60}, {5, -48}, {15, -26}, {15, 12}}, smooth = Smooth.Bezier), Polygon(origin = {48, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{16, 12}, {16, -12}, {-6, -12}, {-12, -8}, {-16, -4}, {-16, 4}, {-12, 8}, {-6, 12}, {16, 12}}), Polygon(origin = {2, 40}, points = {{10, -38}, {-10, -38}, {-10, -26}, {0, -26}, {0, 52}, {10, 52}, {10, -38}}), Polygon(origin = {-31, -8}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{43, 10}, {37, -70}, {-23, -70}, {-43, 70}, {33, 70}, {33, 22}, {23, 22}, {23, 10}, {43, 10}})}));
    end Propulsion;
    annotation(
      Icon(graphics = {Polygon(origin = {-36, 14}, rotation = 10, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Polygon(origin = {-36, 14}, rotation = 55, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Ellipse(origin = {-37, 17}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-27, 27}, {27, -27}}), Polygon(origin = {40, -22}, rotation = 10, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Polygon(origin = {40, -22}, rotation = 55, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-5, 45}, {-10, 10}, {-45, 5}, {-45, -5}, {-10, -10}, {-5, -45}, {5, -45}, {10, -10}, {45, -5}, {45, 5}, {10, 10}, {5, 45}, {-5, 45}}), Ellipse(origin = {39, -21}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-27, 27}, {27, -27}}), Ellipse(origin = {-38, 18}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 8}, {8, -8}}), Ellipse(origin = {38, -20}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, extent = {{-8, 8}, {8, -8}})}));
  end Components;

  package Interfaces
    extends Modelica.Icons.InterfacesPackage;

    connector ShipData "Ship data connector"
      Modelica.SIunits.Length Draft;
      Modelica.SIunits.Mass Displacement;
      Modelica.SIunits.Length CoG[3] "Center of Gravity";
      Modelica.SIunits.Angle Angles[3] "Angles [Heel, Trim, Course]";
      Modelica.SIunits.Velocity LinearSpeed[3] "Linear Speed [surge, sway, heave]";
      Modelica.SIunits.AngularVelocity AngularSpeed[3] "Angular Speed [Roll, Pitch, Yaw]";
      annotation(
        Documentation(info = "<html><head></head><body><p>
  Data connector (surge, sway, heave, roll, pith, yaw, etc...)</p>
  </body></html>"),
        Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 80}, {100, -80}}), Polygon(origin = {-25, 35}, lineColor = {200, 200, 200}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}}), Polygon(origin = {25, -35}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-15, 10}, {-15, 30}, {-65, 0}, {-15, -30}, {-15, -10}, {65, -10}, {65, 10}, {37, 10}, {-15, 10}})}, coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})),
        Diagram(coordinateSystem(grid = {1, 1}, extent = {{-100, -80}, {100, 80}})));
    end ShipData;
  end Interfaces;

  package Functions "Functions used in the library"
    extends Modelica.Icons.FunctionsPackage;

    function WageningenB_Kt_Kq "Wageningen B series Kt & Kq"
      extends Modelica.Icons.FunctionsPackage;
      input Real J "Advance ratio";
      input Real P_D "Pitch-diameter ratio";
      input Real Ae_Ao "Blade area ratio";
      input Real Z "Number of blades";
      output Real Kt "Kt coefficient";
      output Real Kq "Kq coefficient";
    protected
      Real T[39, 5];
      //Matrix Kt
      Real Q[47, 5];
      //Matrix Kq
    algorithm
//Load Kt matrix
      T[1, 1] := 0.00880496;
      T[2, 1] := -0.204554;
      T[3, 1] := 0.166351;
      T[4, 1] := 0.158114;
      T[5, 1] := -0.147581;
      T[6, 1] := -0.481497;
      T[7, 1] := 0.415437;
      T[8, 1] := 0.0144043;
      T[9, 1] := -0.0530054;
      T[10, 1] := 0.0143481;
      T[11, 1] := 0.0606826;
      T[12, 1] := -0.0125894;
      T[13, 1] := 0.0109689;
      T[14, 1] := -0.133698;
      T[15, 1] := 0.00638407;
      T[16, 1] := -0.00132718;
      T[17, 1] := 0.168496;
      T[18, 1] := -0.0507214;
      T[19, 1] := 0.0854559;
      T[20, 1] := -0.0504475;
      T[21, 1] := 0.010465;
      T[22, 1] := -0.00648272;
      T[23, 1] := -0.00841728;
      T[24, 1] := 0.0168424;
      T[25, 1] := -0.00102296;
      T[26, 1] := -0.0317791;
      T[27, 1] := 0.018604;
      T[28, 1] := -0.00410798;
      T[29, 1] := -0.000606848;
      T[30, 1] := -0.0049819;
      T[31, 1] := 0.0025983;
      T[32, 1] := -0.000560528;
      T[33, 1] := -0.00163652;
      T[34, 1] := -0.000328787;
      T[35, 1] := 0.000116502;
      T[36, 1] := 0.000690904;
      T[37, 1] := 0.00421749;
      T[38, 1] := 0.0000565229;
      T[39, 1] := -0.00146564;
      T[1, 2] := 0;
      T[2, 2] := 1;
      T[3, 2] := 0;
      T[4, 2] := 0;
      T[5, 2] := 2;
      T[6, 2] := 1;
      T[7, 2] := 0;
      T[8, 2] := 0;
      T[9, 2] := 2;
      T[10, 2] := 0;
      T[11, 2] := 1;
      T[12, 2] := 0;
      T[13, 2] := 1;
      T[14, 2] := 0;
      T[15, 2] := 0;
      T[16, 2] := 2;
      T[17, 2] := 3;
      T[18, 2] := 0;
      T[19, 2] := 2;
      T[20, 2] := 3;
      T[21, 2] := 1;
      T[22, 2] := 2;
      T[23, 2] := 0;
      T[24, 2] := 1;
      T[25, 2] := 3;
      T[26, 2] := 0;
      T[27, 2] := 1;
      T[28, 2] := 0;
      T[29, 2] := 0;
      T[30, 2] := 1;
      T[31, 2] := 2;
      T[32, 2] := 3;
      T[33, 2] := 1;
      T[34, 2] := 1;
      T[35, 2] := 2;
      T[36, 2] := 0;
      T[37, 2] := 0;
      T[38, 2] := 3;
      T[39, 2] := 0;
      T[1, 3] := 0;
      T[2, 3] := 0;
      T[3, 3] := 1;
      T[4, 3] := 2;
      T[5, 3] := 0;
      T[6, 3] := 1;
      T[7, 3] := 2;
      T[8, 3] := 0;
      T[9, 3] := 0;
      T[10, 3] := 1;
      T[11, 3] := 1;
      T[12, 3] := 0;
      T[13, 3] := 0;
      T[14, 3] := 3;
      T[15, 3] := 6;
      T[16, 3] := 6;
      T[17, 3] := 0;
      T[18, 3] := 0;
      T[19, 3] := 0;
      T[20, 3] := 0;
      T[21, 3] := 6;
      T[22, 3] := 6;
      T[23, 3] := 3;
      T[24, 3] := 3;
      T[25, 3] := 3;
      T[26, 3] := 3;
      T[27, 3] := 0;
      T[28, 3] := 2;
      T[29, 3] := 0;
      T[30, 3] := 0;
      T[31, 3] := 0;
      T[32, 3] := 0;
      T[33, 3] := 2;
      T[34, 3] := 6;
      T[35, 3] := 6;
      T[36, 3] := 0;
      T[37, 3] := 3;
      T[38, 3] := 6;
      T[39, 3] := 3;
      T[1, 4] := 0;
      T[2, 4] := 0;
      T[3, 4] := 0;
      T[4, 4] := 0;
      T[5, 4] := 1;
      T[6, 4] := 1;
      T[7, 4] := 1;
      T[8, 4] := 0;
      T[9, 4] := 0;
      T[10, 4] := 0;
      T[11, 4] := 0;
      T[12, 4] := 1;
      T[13, 4] := 1;
      T[14, 4] := 0;
      T[15, 4] := 0;
      T[16, 4] := 0;
      T[17, 4] := 1;
      T[18, 4] := 2;
      T[19, 4] := 2;
      T[20, 4] := 2;
      T[21, 4] := 2;
      T[22, 4] := 2;
      T[23, 4] := 0;
      T[24, 4] := 0;
      T[25, 4] := 0;
      T[26, 4] := 1;
      T[27, 4] := 2;
      T[28, 4] := 2;
      T[29, 4] := 0;
      T[30, 4] := 0;
      T[31, 4] := 0;
      T[32, 4] := 0;
      T[33, 4] := 0;
      T[34, 4] := 0;
      T[35, 4] := 0;
      T[36, 4] := 1;
      T[37, 4] := 1;
      T[38, 4] := 1;
      T[39, 4] := 2;
      T[1, 5] := 0;
      T[2, 5] := 0;
      T[3, 5] := 0;
      T[4, 5] := 0;
      T[5, 5] := 0;
      T[6, 5] := 0;
      T[7, 5] := 0;
      T[8, 5] := 1;
      T[9, 5] := 1;
      T[10, 5] := 1;
      T[11, 5] := 1;
      T[12, 5] := 1;
      T[13, 5] := 1;
      T[14, 5] := 0;
      T[15, 5] := 0;
      T[16, 5] := 0;
      T[17, 5] := 0;
      T[18, 5] := 0;
      T[19, 5] := 0;
      T[20, 5] := 0;
      T[21, 5] := 0;
      T[22, 5] := 0;
      T[23, 5] := 1;
      T[24, 5] := 1;
      T[25, 5] := 1;
      T[26, 5] := 1;
      T[27, 5] := 1;
      T[28, 5] := 1;
      T[29, 5] := 2;
      T[30, 5] := 2;
      T[31, 5] := 2;
      T[32, 5] := 2;
      T[33, 5] := 2;
      T[34, 5] := 2;
      T[35, 5] := 2;
      T[36, 5] := 2;
      T[37, 5] := 2;
      T[38, 5] := 2;
      T[39, 5] := 2;
//Load Kq matrix
      Q[1, 1] := 0.00379368;
      Q[2, 1] := 0.00886523;
      Q[3, 1] := -0.032241;
      Q[4, 1] := 0.00344778;
      Q[5, 1] := -0.0408811;
      Q[6, 1] := -0.108009;
      Q[7, 1] := -0.0885381;
      Q[8, 1] := 0.188561;
      Q[9, 1] := -0.00370871;
      Q[10, 1] := 0.00513696;
      Q[11, 1] := 0.0209449;
      Q[12, 1] := 0.00474319;
      Q[13, 1] := -0.00723408;
      Q[14, 1] := 0.00438388;
      Q[15, 1] := -0.0269403;
      Q[16, 1] := 0.0558082;
      Q[17, 1] := 0.0161886;
      Q[18, 1] := 0.00318086;
      Q[19, 1] := 0.015896;
      Q[20, 1] := 0.0471729;
      Q[21, 1] := 0.0196283;
      Q[22, 1] := -0.0502782;
      Q[23, 1] := -0.030055;
      Q[24, 1] := 0.0417122;
      Q[25, 1] := -0.0397722;
      Q[26, 1] := -0.00350024;
      Q[27, 1] := -0.0106854;
      Q[28, 1] := 0.00110903;
      Q[29, 1] := -0.000313912;
      Q[30, 1] := 0.0035985;
      Q[31, 1] := -0.00142121;
      Q[32, 1] := -0.00383637;
      Q[33, 1] := 0.0126803;
      Q[34, 1] := -0.00318278;
      Q[35, 1] := 0.00334268;
      Q[36, 1] := -0.00183491;
      Q[37, 1] := 0.000112451;
      Q[38, 1] := -0.0000297228;
      Q[39, 1] := 0.000269551;
      Q[40, 1] := 0.00083265;
      Q[41, 1] := 0.00155334;
      Q[42, 1] := 0.000302683;
      Q[43, 1] := -0.0001843;
      Q[44, 1] := -0.000425399;
      Q[45, 1] := 0.0000869243;
      Q[46, 1] := -0.0004659;
      Q[47, 1] := 0.0000554194;
      Q[1, 2] := 0;
      Q[2, 2] := 2;
      Q[3, 2] := 1;
      Q[4, 2] := 0;
      Q[5, 2] := 0;
      Q[6, 2] := 1;
      Q[7, 2] := 2;
      Q[8, 2] := 0;
      Q[9, 2] := 1;
      Q[10, 2] := 0;
      Q[11, 2] := 1;
      Q[12, 2] := 2;
      Q[13, 2] := 2;
      Q[14, 2] := 1;
      Q[15, 2] := 0;
      Q[16, 2] := 3;
      Q[17, 2] := 0;
      Q[18, 2] := 1;
      Q[19, 2] := 0;
      Q[20, 2] := 1;
      Q[21, 2] := 3;
      Q[22, 2] := 0;
      Q[23, 2] := 3;
      Q[24, 2] := 2;
      Q[25, 2] := 0;
      Q[26, 2] := 0;
      Q[27, 2] := 3;
      Q[28, 2] := 3;
      Q[29, 2] := 0;
      Q[30, 2] := 3;
      Q[31, 2] := 0;
      Q[32, 2] := 1;
      Q[33, 2] := 0;
      Q[34, 2] := 2;
      Q[35, 2] := 0;
      Q[36, 2] := 1;
      Q[37, 2] := 3;
      Q[38, 2] := 3;
      Q[39, 2] := 1;
      Q[40, 2] := 2;
      Q[41, 2] := 0;
      Q[42, 2] := 0;
      Q[43, 2] := 0;
      Q[44, 2] := 0;
      Q[45, 2] := 3;
      Q[46, 2] := 0;
      Q[47, 2] := 1;
      Q[1, 3] := 0;
      Q[2, 3] := 0;
      Q[3, 3] := 1;
      Q[4, 3] := 2;
      Q[5, 3] := 1;
      Q[6, 3] := 1;
      Q[7, 3] := 1;
      Q[8, 3] := 2;
      Q[9, 3] := 0;
      Q[10, 3] := 1;
      Q[11, 3] := 1;
      Q[12, 3] := 1;
      Q[13, 3] := 0;
      Q[14, 3] := 1;
      Q[15, 3] := 2;
      Q[16, 3] := 0;
      Q[17, 3] := 3;
      Q[18, 3] := 3;
      Q[19, 3] := 0;
      Q[20, 3] := 0;
      Q[21, 3] := 0;
      Q[22, 3] := 1;
      Q[23, 3] := 1;
      Q[24, 3] := 2;
      Q[25, 3] := 3;
      Q[26, 3] := 6;
      Q[27, 3] := 0;
      Q[28, 3] := 3;
      Q[29, 3] := 6;
      Q[30, 3] := 0;
      Q[31, 3] := 6;
      Q[32, 3] := 0;
      Q[33, 3] := 2;
      Q[34, 3] := 3;
      Q[35, 3] := 6;
      Q[36, 3] := 1;
      Q[37, 3] := 2;
      Q[38, 3] := 6;
      Q[39, 3] := 0;
      Q[40, 3] := 0;
      Q[41, 3] := 2;
      Q[42, 3] := 6;
      Q[43, 3] := 0;
      Q[44, 3] := 3;
      Q[45, 3] := 3;
      Q[46, 3] := 6;
      Q[47, 3] := 6;
      Q[1, 4] := 0;
      Q[2, 4] := 0;
      Q[3, 4] := 0;
      Q[4, 4] := 0;
      Q[5, 4] := 1;
      Q[6, 4] := 1;
      Q[7, 4] := 1;
      Q[8, 4] := 1;
      Q[9, 4] := 0;
      Q[10, 4] := 0;
      Q[11, 4] := 0;
      Q[12, 4] := 0;
      Q[13, 4] := 1;
      Q[14, 4] := 1;
      Q[15, 4] := 1;
      Q[16, 4] := 1;
      Q[17, 4] := 1;
      Q[18, 4] := 1;
      Q[19, 4] := 2;
      Q[20, 4] := 2;
      Q[21, 4] := 2;
      Q[22, 4] := 2;
      Q[23, 4] := 2;
      Q[24, 4] := 2;
      Q[25, 4] := 2;
      Q[26, 4] := 2;
      Q[27, 4] := 0;
      Q[28, 4] := 0;
      Q[29, 4] := 0;
      Q[30, 4] := 1;
      Q[31, 4] := 1;
      Q[32, 4] := 2;
      Q[33, 4] := 2;
      Q[34, 4] := 2;
      Q[35, 4] := 2;
      Q[36, 4] := 0;
      Q[37, 4] := 0;
      Q[38, 4] := 0;
      Q[39, 4] := 1;
      Q[40, 4] := 1;
      Q[41, 4] := 1;
      Q[42, 4] := 1;
      Q[43, 4] := 2;
      Q[44, 4] := 2;
      Q[45, 4] := 2;
      Q[46, 4] := 2;
      Q[47, 4] := 2;
      Q[1, 5] := 0;
      Q[2, 5] := 0;
      Q[3, 5] := 0;
      Q[4, 5] := 0;
      Q[5, 5] := 0;
      Q[6, 5] := 0;
      Q[7, 5] := 0;
      Q[8, 5] := 0;
      Q[9, 5] := 1;
      Q[10, 5] := 1;
      Q[11, 5] := 1;
      Q[12, 5] := 1;
      Q[13, 5] := 1;
      Q[14, 5] := 1;
      Q[15, 5] := 1;
      Q[16, 5] := 0;
      Q[17, 5] := 0;
      Q[18, 5] := 0;
      Q[19, 5] := 0;
      Q[20, 5] := 0;
      Q[21, 5] := 0;
      Q[22, 5] := 0;
      Q[23, 5] := 0;
      Q[24, 5] := 0;
      Q[25, 5] := 0;
      Q[26, 5] := 0;
      Q[27, 5] := 1;
      Q[28, 5] := 1;
      Q[29, 5] := 1;
      Q[30, 5] := 1;
      Q[31, 5] := 1;
      Q[32, 5] := 1;
      Q[33, 5] := 1;
      Q[34, 5] := 1;
      Q[35, 5] := 1;
      Q[36, 5] := 2;
      Q[37, 5] := 2;
      Q[38, 5] := 2;
      Q[39, 5] := 2;
      Q[40, 5] := 2;
      Q[41, 5] := 2;
      Q[42, 5] := 2;
      Q[43, 5] := 2;
      Q[44, 5] := 2;
      Q[45, 5] := 2;
      Q[46, 5] := 2;
      Q[47, 5] := 2;
// Compute Kt & Kq
      Kt := 0;
      for i in 1:39 loop
        Kt := Kt + T[i, 1]*J^T[i, 2]*P_D^T[i, 3]*Ae_Ao^T[i, 4]*Z^T[i, 5];
      end for;
      Kq := 0;
      for i in 1:47 loop
        Kq := Kq + Q[i, 1]*J^Q[i, 2]*P_D^Q[i, 3]*Ae_Ao^Q[i, 4]*Z^Q[i, 5];
      end for;
      annotation(
        Documentation(info = "<html><head></head><body>Kt &amp; Kq values for wageningen B-series obtained from:<div><br></div><div>[Oosterveld1975]&nbsp;M.W.C. Oosterveld and P. Van Oossanen, \"Further computer-analyzed data of the wageningen B-screw series\", International Shipbuilding Progress, Vol. 22, No. 251, July 1975</div><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>2 &lt;= Z &lt;= 7 (number of blades)</div><div>0.30 &lt;= Ae/Ao &lt;= 1.05 (expaded area ratio)</div><div>0.5 &lt;= P/D &lt;= 1.40 (pitch-diameter ratio)</div><div>Rn &lt;= 2x10^6 (Reynolds number)</div><div><br></div><div><div><br></div><div><u>Fhurter development:</u></div><div>- Include corrections for Rn &gt; 2x10^6&nbsp;</div></div></body></html>", revisions = "<html><head></head><body>Rev. 0.0 (11-08-2021): Initial release</body></html>"));
    end WageningenB_Kt_Kq;

    function NACA0018
      extends Modelica.Icons.FunctionsPackage;
      input Real BetaRad "Angulo de ataque";
      input Real Re "Numero de Reynolds";
      input Real Asp "Aspect Ratio";
      output Real Cl "Lift coefficient";
      output Real Cd "Draft coefficient";
      output Real Cm "Moment coefficient";
    protected
      Real Re_inf "Reynolds inferior al Reynolds empleado";
      Real Re_sup "Reynolds superior al Reynolds empleado";
      Real CL_inf "CL inferior del Reynolds empleado";
      Real CL_sup "CL superior del Reynolds empleado";
      Real CD_inf "CD inferior del Reynolds empleado";
      Real CD_sup "CD superior del Reynolds empleado";
      Real CM_inf "CM inferior del Reynolds empleado";
      Real CM_sup "CM superior del Reynolds empleado";
      Real CN "Coeficiente normal a la cuerda del perfil";
      Real CNLc "Coef norm Lift corregido";
      Real CNDc "Coef norm Drag corregido";
      Real CNc "Coeficiente normal a la cuerda del perfil corregida por efectos 3D";
      Real CLT1 "Parte proporcional (en tanto por uno) de CN debida al CL";
      Real CDT1 "Parte proporcional (en tanto por uno) de CN debida al CD";
      Real Beta "Beta en grados";
    algorithm
      Beta := BetaRad*180/Modelica.Constants.pi;
      if Re <= 10760000 then
        Re_inf := 0;
        Re_sup := 10760000;
        CL_inf := 0;
        if Beta < 13 then
          CL_sup := 2*3.141592653589*Modelica.Math.tan(3.141592653589*Beta/180);
        elseif 13 <= Beta and Beta <= 35 then
          CL_sup := 0.000162951*Beta^3 + (-0.01396165107)*Beta^2 + 0.346983204021*Beta^1 + (-1.066263470829);
        elseif 35 < Beta and Beta <= 135 then
          CL_sup := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
        else
          CL_sup := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
        end if;
        CD_inf := 0;
        if Beta <= 35 then
          CD_sup := 0.000000002367*Beta^6 + (-0.000000264312)*Beta^5 + 0.000010524057*Beta^4 + (-0.000169545539)*Beta^3 + 0.001182043628*Beta^2 + (-0.002888895318)*Beta^1 + 0.010370719493;
        elseif 35 < Beta and Beta <= 85 then
          CD_sup := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
        elseif 85 < Beta and Beta <= 130 then
          CD_sup := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
        else
          CD_sup := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
        end if;
        CM_inf := 0;
        if Beta <= 35 then
          CM_sup := (-0.000000059715)*Beta^4 + 0.000004184973*Beta^3 + (-0.000051492062)*Beta^2 + (-0.001861616)*Beta^1 + 0.00001313054;
        elseif 35 < Beta and Beta <= 135 then
          CM_sup := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
        else
          CM_sup := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
        end if;
      elseif Re > 10760000 and Re <= 30130000 then
        Re_inf := 10760000;
        Re_sup := 30130000;
        if Beta < 13 then
          CL_inf := 2*3.141592653589*Modelica.Math.tan(3.141592653589*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000162950951*Beta^3 + (-0.01396165107)*Beta^2 + 0.346983204021*Beta^1 + (-1.066263470829);
          CL_sup := 0.000175211235*Beta^3 + (-0.014925689447)*Beta^2 + 0.370380132616*Beta^1 + (-1.223495131922);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000002367*Beta^6 + (-0.000000264312)*Beta^5 + 0.000010524057*Beta^4 + (-0.000169545539)*Beta^3 + 0.001182043628*Beta^2 + (-0.002888895318)*Beta^1 + 0.010370719493;
          CD_sup := 0.000000001817*Beta^6 + (-0.000000215343)*Beta^5 + 0.000009064869*Beta^4 + (-0.000153373191)*Beta^3 + 0.001108992399*Beta^2 + (-0.00286672437)*Beta^1 + 0.010840157307;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000059715)*Beta^4 + 0.000004184973*Beta^3 + (-0.000051492062)*Beta^2 + (-0.001861615632)*Beta^1 + 0.00001313054;
          CM_sup := (-0.000000062999)*Beta^4 + 0.000004567799*Beta^3 + (-0.000064557867)*Beta^2 + (-0.001755473275)*Beta^1 + (-0.000125673244);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      elseif Re > 30130000 and Re <= 49500000 then
        Re_inf := 30130000;
        Re_sup := 49500000;
        if Beta < 13 then
          CL_inf := 2*3.141592653589*Modelica.Math.tan(3.141592653589*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000175211235*Beta^3 + (-0.014925689447)*Beta^2 + 0.370380132616*Beta^1 + (-1.223495131922);
          CL_sup := 0.000181084348*Beta^3 + (-0.015393263178)*Beta^2 + 0.381880872456*Beta^1 + (-1.302575977163);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001817*Beta^6 + (-0.000000215343)*Beta^5 + 0.000009064869*Beta^4 + (-0.000153373191)*Beta^3 + 0.001108992399*Beta^2 + (-0.00286672437)*Beta^1 + 0.010840157307;
          CD_sup := 0.000000001524*Beta^6 + (-0.000000189118)*Beta^5 + 0.000008286119*Beta^4 + (-0.00014509316)*Beta^3 + 0.001084231854*Beta^2 + (-0.002951869156)*Beta^1 + 0.011211182556;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000062999)*Beta^4 + 0.000004567799*Beta^3 + (-0.000064557867)*Beta^2 + (-0.001755473275)*Beta^1 + (-0.000125673244);
          CM_sup := (-0.000000069839)*Beta^4 + 0.000005044608*Beta^3 + (-0.000075878964)*Beta^2 + (-0.001675754552)*Beta^1 + (-0.000225310331);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      elseif Re > 49500000 and Re <= 68870000 then
        Re_inf := 49500000;
        Re_sup := 68870000;
        if Beta < 13 then
          CL_inf := 2*3.141592653589*Modelica.Math.tan(3.141592653589*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000181084348*Beta^3 + (-0.015393263178)*Beta^2 + 0.381880872456*Beta^1 + (-1.302575977163);
          CL_sup := 0.000185078207*Beta^3 + (-0.015712151616)*Beta^2 + 0.389738566265*Beta^1 + (-1.357002462754);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001524*Beta^6 + (-0.000000189118)*Beta^5 + 0.000008286119*Beta^4 + (-0.00014509316)*Beta^3 + 0.001084231854*Beta^2 + (-0.002951869156)*Beta^1 + 0.011211182556;
          CD_sup := 0.000000001442*Beta^6 + (-0.000000182299)*Beta^5 + 0.000008125859*Beta^4 + (-0.000144559751)*Beta^3 + 0.001088686839*Beta^2 + (-0.002943963609)*Beta^1 + 0.011273813686;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000069839)*Beta^4 + 0.000005044608*Beta^3 + (-0.000075878964)*Beta^2 + (-0.001675754552)*Beta^1 + (-0.000225310331);
          CM_sup := (-0.000000067302)*Beta^4 + 0.000004951063*Beta^3 + (-0.000075703519)*Beta^2 + (-0.001674244566)*Beta^1 + (-0.000226146187);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      elseif Re > 68870000 and Re <= 88240000 then
        Re_inf := 68870000;
        Re_sup := 88240000;
        if Beta < 13 then
          CL_inf := 2*3.141592653589*Modelica.Math.tan(3.141592653589*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000185078207*Beta^3 + (-0.015712151616)*Beta^2 + 0.389738566265*Beta^1 + (-1.357002462754);
          CL_sup := 0.000188329035*Beta^3 + (-0.015970865286)*Beta^2 + 0.396107782019*Beta^1 + (-1.401453265092);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001442*Beta^6 + (-0.000000182299)*Beta^5 + 0.000008125859*Beta^4 + (-0.000144559751)*Beta^3 + 0.001088686839*Beta^2 + (-0.002943963609)*Beta^1 + 0.011273813686;
          CD_sup := 0.000000001397*Beta^6 + (-0.000000180283)*Beta^5 + 0.000008196701*Beta^4 + (-0.0001492775)*Beta^3 + 0.001153750475*Beta^2 + (-0.003209013356)*Beta^1 + 0.011473380592;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000067302)*Beta^4 + 0.000004951063*Beta^3 + (-0.000075703519)*Beta^2 + (-0.001674244566)*Beta^1 + (-0.000226146187);
          CM_sup := (-0.000000058372)*Beta^4 + 0.000004368736*Beta^3 + (-0.000064227997)*Beta^2 + (-0.001746771647)*Beta^1 + (-0.00014027489);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      else
        Re_inf := 88240000;
        Re_sup := 107600000;
        if Beta < 13 then
          CL_inf := 2*3.141592653589*Modelica.Math.tan(3.141592653589*Beta/180);
          CL_sup := CL_inf;
        elseif 13 <= Beta and Beta <= 35 then
          CL_inf := 0.000188329035*Beta^3 + (-0.015970865286)*Beta^2 + 0.396107782019*Beta^1 + (-1.401453265092);
          CL_sup := 0.000190329156*Beta^3 + (-0.016136934563)*Beta^2 + 0.40032766348*Beta^1 + (-1.431290199656);
        elseif 35 < Beta and Beta <= 135 then
          CL_inf := 0.000000057865776*Beta^4 + (-0.000020584903189)*Beta^3 + 0.002819733306956*Beta^2 + (-0.17534684597967)*Beta^1 + 4.43601223297784;
          CL_sup := CL_inf;
        else
          CL_inf := 0.00000234965035*Beta^4 + (-0.001537513597514)*Beta^3 + 0.372926107226277*Beta^2 + (-39.7607651903834)*Beta^1 + 1574.32500000072;
          CL_sup := CL_inf;
        end if;
        if Beta <= 35 then
          CD_inf := 0.000000001397*Beta^6 + (-0.000000180283)*Beta^5 + 0.000008196701*Beta^4 + (-0.0001492775)*Beta^3 + 0.001153750475*Beta^2 + (-0.003209013356)*Beta^1 + 0.011473380592;
          CD_sup := 0.000000001217*Beta^6 + (-0.000000164083)*Beta^5 + 0.000007703761*Beta^4 + (-0.000143633728)*Beta^3 + 0.001134630347*Beta^2 + (-0.003237530724)*Beta^1 + 0.011566638425;
        elseif 35 < Beta and Beta <= 85 then
          CD_inf := (-0.000006603418803)*Beta^3 + 0.001007937995338*Beta^2 + (-0.023022842268829)*Beta^1 + 0.203659743589387;
          CD_sup := CD_inf;
        elseif 85 < Beta and Beta <= 130 then
          CD_inf := 0.000000920673401*Beta^3 + (-0.00048202525252)*Beta^2 + 0.065851745791228*Beta^1 + (-2.05627338383755);
          CD_sup := CD_inf;
        else
          CD_inf := (-0.000001324428904)*Beta^3 + 0.00075146993007*Beta^2 + (-0.141458388111881)*Beta^1 + 8.84853927272686;
          CD_sup := CD_inf;
        end if;
        if Beta <= 35 then
          CM_inf := (-0.000000058372)*Beta^4 + 0.000004368736*Beta^3 + (-0.000064227997)*Beta^2 + (-0.001746771647)*Beta^1 + (-0.00014027489);
          CM_sup := (-0.000000065936)*Beta^4 + 0.000004958117*Beta^3 + (-0.000078326018)*Beta^2 + (-0.001646744988)*Beta^1 + (-0.000265282489);
        elseif 35 < Beta and Beta <= 135 then
          CM_inf := 0.000000000127592*Beta^4 + (-0.00000014113985)*Beta^3 + 0.000031652959804*Beta^2 + (-0.001646880464226)*Beta^1 + (-0.01359604544956);
          CM_sup := CM_inf;
        else
          CM_inf := 0.000000024009324*Beta^4 + (-0.000015547008547)*Beta^3 + 0.003727593240095*Beta^2 + (-0.393061266511464)*Beta^1 + 15.4428636363715;
          CM_sup := CM_inf;
        end if;
      end if;
//Tercero: Calcular el valor de CL, CD y CM interporlando con Reynolds
      Cl := CL_inf + (Re - Re_inf)*((CL_sup - CL_inf)/(Re_sup - Re_inf));
      Cd := CD_inf + (Re - Re_inf)*((CD_sup - CD_inf)/(Re_sup - Re_inf));
      Cm := CM_inf + (Re - Re_inf)*((CM_sup - CM_inf)/(Re_sup - Re_inf));
//Corregir CL y CD en 0<=Beta<=35
      if Beta <= 35 then
        CN := Cl*Modelica.Math.cos(3.141592653589*Beta/180) + Cd*Modelica.Math.sin(3.141592653589*Beta/180);
        if CN == 0 then
          Cl := 0;
        else
          CLT1 := Cl*Modelica.Math.cos(3.141592653589*Beta/180)/CN;
          CDT1 := Cd*Modelica.Math.sin(3.141592653589*Beta/180)/CN;
          CNc := CN/(1 + 2.25/Asp);
          CNLc := CNc*CLT1;
          CNDc := CNc*CDT1;
          Cl := CNLc/Modelica.Math.cos(3.141592653589*Beta/180);
          Cd := CNDc/Modelica.Math.sin(3.141592653589*Beta/180);
        end if;
      end if;
      annotation(
        Documentation(info = "<html><head></head><body><p style=\"font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">NACA0018 coefficients obtained from javafoil</span></p><div class=\"htmlDoc\"><div class=\"htmlDoc\"><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><u>Limitations:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div><div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><u>References:</u></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><u><br></u></div><div>[Acorts]<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Antonio Corts, \"Gemelo digital de timón y servo usando Modelica\", MSc Thesis 2022</div></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard; font-size: 12px;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\"><div><u>Further development:</u></div><div><br></div><div><br></div><div><u>Copyright:</u></div><div><span style=\"font-family: -webkit-standard;\"><br></span></div><div><span style=\"font-family: -webkit-standard;\">Rev.0.0: Released under CC-BY by Antonio Corts de la Peña, MSc Thesis&nbsp;</span><span style=\"font-family: -webkit-standard;\">\"Gemelo digital de timón y servo usando Modelica\", 2022</span></div></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev. 0.0 (26-09-2022): Initial release</span></body></html>"));
    end NACA0018;
  end Functions;

  package Types "Constants and types with choices, especially to build menus"
    extends Modelica.Icons.TypesPackage;
  end Types;

  package SubComponents "Library SubComponents"
    extends Modelica.Icons.InternalPackage;

    model VariableTranslation "Derivative work of Translation component of MSL"
      import Modelica.Mechanics.MultiBody.Types;
      import Modelica.SIunits.Conversions.to_unit1;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(
        Placement(transformation(extent = {{-116, -16}, {-84, 16}})));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system fixed to the component with one cut-force and cut-torque" annotation(
        Placement(transformation(extent = {{84, -16}, {116, 16}})));
      Modelica.Blocks.Interfaces.RealInput r_vect[3] annotation(
        Placement(visible = true, transformation(origin = {-4, -106}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-2, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    protected
      outer Modelica.Mechanics.MultiBody.World world;
    equation
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0, "Neither connector frame_a nor frame_b of FixedTranslation object is connected");
      frame_b.r_0 = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, r_vect);
      frame_b.R = frame_a.R;
// Force and torque balance
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t + cross(r_vect, frame_b.f);
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(textColor = {0, 0, 255}, extent = {{-150, 85}, {150, 45}}, textString = "%name"), Text(extent = {{150, -50}, {-150, -20}}, textString = "r=%r_vect"), Text(textColor = {128, 128, 128}, extent = {{-89, 38}, {-53, 13}}, textString = "a"), Text(textColor = {128, 128, 128}, extent = {{57, 39}, {93, 14}}, textString = "b"), Line(origin = {-10, 0}, points = {{10, 20}, {-10, -20}}), Line(origin = {10, 0}, points = {{10, 20}, {-10, -20}}), Polygon(origin = {-54, 0}, fillPattern = FillPattern.Solid, points = {{-46, 4}, {46, 4}, {42, -4}, {-46, -4}, {-46, 4}}), Polygon(origin = {54, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-46, 4}, {46, 4}, {42, -4}, {-46, -4}, {-46, 4}})}),
        Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 5}, {100, -5}}), Line(points = {{-95, 20}, {-58, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{-94, 18}, {-94, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(textColor = {128, 128, 128}, extent = {{-72, 35}, {-58, 24}}, textString = "x"), Text(textColor = {128, 128, 128}, extent = {{-113, 57}, {-98, 45}}, textString = "y"), Line(points = {{-100, -4}, {-100, -69}}, color = {128, 128, 128}), Line(points = {{-100, -63}, {90, -63}}, color = {128, 128, 128}), Text(textColor = {128, 128, 128}, extent = {{-22, -39}, {16, -63}}, textString = "input r"), Polygon(fillPattern = FillPattern.Solid, points = {{88, -59}, {88, -68}, {100, -63}, {88, -59}}), Line(points = {{100, -3}, {100, -68}}, color = {128, 128, 128}), Line(points = {{69, 20}, {106, 20}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{70, 18}, {70, 50}}, color = {128, 128, 128}, arrow = {Arrow.None, Arrow.Filled}), Text(textColor = {128, 128, 128}, extent = {{92, 35}, {106, 24}}, textString = "x"), Text(textColor = {128, 128, 128}, extent = {{51, 57}, {66, 45}}, textString = "y")}),
        Documentation(info = "<html><head></head><body><p>This component is a modification of \"fixedTranslation\" of Modelica.Mechanics.Multibody to enable a real time bar changing. 3D visualization was disabled.</p><pre style=\"font-size: 12px;\"><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><u>Copyright:</u></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><br></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Original Work:&nbsp;</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Copyright&nbsp;</span><span style=\"font-family: -webkit-standard;\">©</span><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">&nbsp;2021-2022 Modelica Association</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\"><br></span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><span style=\"font-family: 'Times New Roman'; orphans: 2; widows: 2;\">Derivative Work:&nbsp;</span></div><div style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\"><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><b style=\"font-size: 10pt;\">ShipSIM package</b></p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\">licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the Modelica License&nbsp;2 with additional clause 16<br style=\"font-size: 10pt;\">Copyright © 2020-2023, Basilio Puente, M Dolores Fernandez and contributors.</p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><em style=\"font-size: 10pt;\">ShipSIM Modelica package is&nbsp;<u style=\"font-size: 10pt;\">free</u>&nbsp;software and the use is completely at&nbsp;<u style=\"font-size: 10pt;\">your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License&nbsp;2 with additional clause 16. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p></div></pre>
</body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0: (01/03/2021): Initial release</span></body></html>"));
    end VariableTranslation;
  end SubComponents;

  package Outdated
    extends Modelica.Icons.InternalPackage;

    model SimpleShipModel "Simplified Ship Model"
      parameter Modelica.SIunits.Length Lpp = 100 "Length between perpendiculars [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length B = 20 "Moulded beam [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Length CoF[3] = {50.364, 0, 4} "Centre of Floatation Area (ship ref. sys.) {X,Y,Z} [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real Disp_Table[:, 2] = {{-2.5884e4, 0}, {1.2623e6, 1}, {4.0336e4, 2}} "Displacement Vs Mean draft curve [kg]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real LCB_Table[:, 2] = {{4.9049e1, 0}, {1.7677, 1}, {-1.2278, 2}, {4.5593e-1, 3}, {-8.6574e-2, 4}, {7.7545e-3, 5}, {-2.6145e-4, 6}} "LCB Vs Mean Draft curve [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real TCB_Table[:, 2] = {{0, 0}} "TCB Vs Mean Draft curve [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real VCB_Table[:, 2] = {{1.463e-2, 0}, {5.0289e-1, 1}, {3.7673e-3, 2}} "VCB Vs Mean Draft curve [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real BMt_Table[:, 2] = {{2.63608e1, -8.78016e-1}} "BMt Vs Mean Draft curve [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Real BMl_Table[:, 2] = {{4.93467e2, -7.47807e-1}} "BMl Vs Mean Draft curve [m]" annotation(
        Dialog(tab = "Hidrostatics", group = "Hidrostatics Properties"));
      parameter Modelica.SIunits.Mass Displacement = 5681200 "Displacement [kg]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Length CoG[3] = {50.364, 0, 9} "Centre of Gravity (ship ref. sys.) {X,Y,Z} [m]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_xx = Displacement*(0.3557*B)^2 "X axis inertia (roll) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_yy = Displacement*(0.2746*Lpp)^2 "Y axis inertia (Pitch) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Modelica.SIunits.Inertia I_zz = Displacement*(0.2739*Lpp)^2 "Z axis inertia (Yaw) [kg*m2]" annotation(
        Dialog(group = "Mass Properties"));
      parameter Real B_roll[:, 2] = {{50000000, 1}, {500000, 2}} "Roll damping factor equation [Nm*s/rad]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_pitch[:, 2] = [1000000, 2] "Pitch damping factor equation [Nm*s/rad]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_yaw[:, 2] = {{50000000, 1}, {500000, 2}} "Yaw damping factor equation [Nm*s/rad]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_surge[:, 2] = {{9.1437e2, 3}, {-5.2863e3, 2}, {1.9657e4, 1}} "Surge damping factor equation [N*s/m]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_sway[:, 2] = {{1742500, 2}} "Sway damping factor equation [N*s/m]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Real B_heave[:, 2] = {{500000, 1}, {5000, 2}} "Heave damping factor equation [N*s/m]" annotation(
        Dialog(tab = "Damping Factors", group = "Damping Factors"));
      parameter Modelica.SIunits.Length ini_Pos[3] = {0, 0, 0} "Initial position {X,Y,Z} [m]" annotation(
        Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
      parameter Modelica.SIunits.Angle ini_Ori[3] = {0, 0, 0} "Initial orientation {X,Y,Z} [rad]" annotation(
        Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
      parameter Modelica.SIunits.Velocity ini_Vel[3] = {0, 0, 0} "Initial speed {X,Y,Z} [m/s]" annotation(
        Dialog(tab = "Start Values", group = "Initialization (World ref. sys.)"));
      Modelica.Mechanics.MultiBody.Parts.Body ShipMass(I_11 = I_xx, I_22 = I_yy, I_33 = I_zz, angles_fixed = true, angles_start = ini_Ori, animation = false, m = Displacement, r_0(each fixed = true, start = ini_Pos), r_CM = CoG, v_0(each fixed = true, start = ini_Vel), w_0_fixed = true) annotation(
        Placement(visible = true, transformation(origin = {46, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(
        Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelica.SIunits.Angle Heel;
      Modelica.SIunits.Angle Trim;
      Modelica.SIunits.Angle Yaw;
      Modelica.SIunits.Velocity Surge;
      Modelica.SIunits.Velocity Sway;
      Modelica.SIunits.Velocity Heave;
      Real P_s[3];
      Real P_f[3];
      Real Draft;
      Real CoB[3];
      Real Disp;
      Real BMt;
      Real BMl;
      Modelica.Blocks.Interfaces.RealInput Water_depth "Water depth value [m]" annotation(
        Placement(visible = true, transformation(origin = {106, -60}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {105, 59}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation COB_pos annotation(
        Placement(visible = true, transformation(origin = {32, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Forces.WorldForce B_ForceWorld(N_to_m = Displacement*9.81/B, animation = true, diameter = B/40) annotation(
        Placement(visible = true, transformation(origin = {66, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque DampingForceTorque(N_to_m = Displacement*9.81/B, Nm_to_m = Displacement*9.81/B, animation = true, forceDiameter = B/40, resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve, torqueDiameter = B/40) annotation(
        Placement(visible = true, transformation(origin = {58, -68}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation DampingCentre annotation(
        Placement(visible = true, transformation(origin = {16, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-40, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Mechanics.MultiBody.Sensors.AbsoluteAngularVelocity absoluteAngularVelocity(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a) annotation(
        Placement(visible = true, transformation(origin = {-60, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ShipSIM.SubComponents.VariableTranslation COF_pos annotation(
        Placement(visible = true, transformation(origin = {-70, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput Angles[3] annotation(
        Placement(visible = true, transformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, -102}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
    protected
      Real Disp_aux[size(Disp_Table, 1)];
      Real LCB_aux[size(LCB_Table, 1)];
      Real TCB_aux[size(TCB_Table, 1)];
      Real VCB_aux[size(VCB_Table, 1)];
      Real BMt_aux[size(BMt_Table, 1)];
      Real BMl_aux[size(BMl_Table, 1)];
      Real B_roll_aux[size(B_roll, 1)];
      Real B_pitch_aux[size(B_pitch, 1)];
      Real B_yaw_aux[size(B_yaw, 1)];
      Real B_surge_aux[size(B_surge, 1)];
      Real B_sway_aux[size(B_sway, 1)];
      Real B_heave_aux[size(B_heave, 1)];
    equation
//Calcular las posiciones absolutas de los puntos
      P_s[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {0, -B, 0});
      P_f[:] = frame_a.r_0 + Modelica.Mechanics.MultiBody.Frames.resolve1(frame_a.R, {Lpp, 0, 0});
      Heel = Modelica.Math.atan((frame_a.r_0[3] - P_s[3])/B);
      Trim = Modelica.Math.atan((P_f[3] - frame_a.r_0[3])/Lpp);
      Draft = Water_depth - (P_f[3] + frame_a.r_0[3])/2;
//Calcular los valores de tablas
      for i in 1:size(Disp_aux, 1) loop
        Disp_aux[i] = Disp_Table[i, 1]*Draft^Disp_Table[i, 2];
      end for;
      for i in 1:size(LCB_aux, 1) loop
        LCB_aux[i] = LCB_Table[i, 1]*Draft^LCB_Table[i, 2];
      end for;
      for i in 1:size(TCB_aux, 1) loop
        TCB_aux[i] = TCB_Table[i, 1]*Draft^TCB_Table[i, 2];
      end for;
      for i in 1:size(VCB_aux, 1) loop
        VCB_aux[i] = VCB_Table[i, 1]*Draft^VCB_Table[i, 2];
      end for;
      for i in 1:size(BMt_aux, 1) loop
        BMt_aux[i] = BMt_Table[i, 1]*Draft^BMt_Table[i, 2];
      end for;
      for i in 1:size(BMl_aux, 1) loop
        BMl_aux[i] = BMl_Table[i, 1]*Draft^BMl_Table[i, 2];
      end for;
      Disp = sum(Disp_aux[:]);
      BMt = sum(BMt_aux[:]);
      BMl = sum(BMl_aux[:]);
      CoB[1] = sum(LCB_aux[:]) - BMl*Modelica.Math.sin(Trim);
      CoB[2] = sum(TCB_aux[:]) - BMt*Modelica.Math.sin(Heel);
      CoB[3] = sum(VCB_aux[:]) + BMl*(1 - Modelica.Math.cos(Trim)) + BMt*(1 - Modelica.Math.cos(Heel));
      COB_pos.r_vect = CoB;
      B_ForceWorld.force = {0, 0, Disp*Modelica.Constants.g_n};
//Ecuaciones de amortiguamiento
      COF_pos.r_vect = {CoF[1], CoF[2], CoF[3]} "Gira con respecto al centro de flotacion";
      DampingCentre.r_vect = CoB;
      der(Yaw) = absoluteAngularVelocity.w[3];
      Surge = absoluteVelocity.v[1];
      Sway = absoluteVelocity.v[2];
      Heave = absoluteVelocity.v[3];
      for i in 1:size(B_roll_aux, 1) loop
        B_roll_aux[i] = B_roll[i, 1]*abs(der(Heel))^B_roll[i, 2];
      end for;
      for i in 1:size(B_pitch_aux, 1) loop
        B_pitch_aux[i] = B_pitch[i, 1]*abs(der(Trim))^B_pitch[i, 2];
      end for;
      for i in 1:size(B_yaw_aux, 1) loop
        B_yaw_aux[i] = B_yaw[i, 1]*abs(der(Yaw))^B_yaw[i, 2];
      end for;
      for i in 1:size(B_surge_aux, 1) loop
        B_surge_aux[i] = B_surge[i, 1]*abs(Surge)^B_surge[i, 2];
      end for;
      for i in 1:size(B_sway_aux, 1) loop
        B_sway_aux[i] = B_sway[i, 1]*abs(Sway)^B_sway[i, 2];
      end for;
      for i in 1:size(B_heave_aux, 1) loop
        B_heave_aux[i] = B_heave[i, 1]*abs(Heave)^B_heave[i, 2];
      end for;
      DampingForceTorque.torque[1] = -1*sign(der(Heel))*sum(B_roll_aux);
      DampingForceTorque.torque[2] = -1*sign(der(Trim))*sum(B_pitch_aux);
      DampingForceTorque.torque[3] = -1*sign(der(Yaw))*sum(B_yaw_aux);
      DampingForceTorque.force[1] = -1*sign(Surge)*sum(B_surge_aux);
      DampingForceTorque.force[2] = -1*sign(Sway)*sum(B_sway_aux);
      DampingForceTorque.force[3] = -1*sign(Heave)*sum(B_heave_aux);
      connect(frame_a, COB_pos.frame_a) annotation(
        Line(points = {{-100, -40}, {-26, -40}, {-26, 58}, {22, 58}}));
      connect(COB_pos.frame_b, B_ForceWorld.frame_b) annotation(
        Line(points = {{42, 58}, {66, 58}, {66, 48}}, color = {95, 95, 95}));
      connect(DampingCentre.frame_b, DampingForceTorque.frame_b) annotation(
        Line(points = {{26, -68}, {48, -68}}));
      connect(frame_a, DampingCentre.frame_a) annotation(
        Line(points = {{-100, -40}, {-18, -40}, {-18, -68}, {6, -68}}));
      connect(DampingForceTorque.frame_resolve, frame_a) annotation(
        Line(points = {{58, -58}, {58, -40}, {-100, -40}}));
      connect(ShipMass.frame_a, frame_a) annotation(
        Line(points = {{36, -4}, {-26, -4}, {-26, -40}, {-100, -40}}));
      connect(absoluteAngularVelocity.frame_a, frame_a) annotation(
        Line(points = {{-70, 38}, {-82, 38}, {-82, -40}, {-100, -40}}, color = {95, 95, 95}));
      connect(COF_pos.frame_b, absoluteVelocity.frame_a) annotation(
        Line(points = {{-60, -82}, {-50, -82}}, color = {95, 95, 95}));
      connect(frame_a, COF_pos.frame_a) annotation(
        Line(points = {{-100, -40}, {-82, -40}, {-82, -82}, {-80, -82}}));
      Angles = {Heel, Trim, Yaw};
      annotation(
        Icon(graphics = {Rectangle(origin = {-0.01, 0}, borderPattern = BorderPattern.Engraved, extent = {{-99.99, 100}, {99.99, -100}}, radius = 15), Text(origin = {-6, 116}, extent = {{-56, 10}, {56, -10}}, textString = "%name"), Polygon(origin = {0, 3}, fillColor = {206, 206, 206}, fillPattern = FillPattern.Solid, points = {{-56, 31}, {-56, 7}, {-78, 7}, {-78, -13}, {-62, -15}, {-56, -31}, {62, -31}, {70, -29}, {74, -25}, {76, -23}, {74, -19}, {70, -15}, {62, -13}, {78, 7}, {-42, 7}, {-42, 31}, {-56, 31}}), Line(origin = {-19.21, -5.26}, points = {{-52.1499, 33.1499}, {-52.1499, -22.8501}, {47.8501, -22.8501}}, color = {255, 0, 0}, arrow = {Arrow.Filled, Arrow.Filled}, arrowSize = 7), Line(origin = {78.6622, -11.2045}, points = {{-11.8536, 6.20711}, {16.1464, 6.20711}}, color = {0, 0, 255}, thickness = 0.5), Line(origin = {78.8073, -8.74454}, points = {{-6, 0}, {8, 0}}, color = {0, 0, 255}), Line(origin = {80.5547, -12.4945}, points = {{-4, 0}, {4, 0}}, color = {0, 0, 255}), Line(origin = {-94.2489, -11.7902}, points = {{-5.8536, 6.20711}, {16.1464, 6.20711}}, color = {0, 0, 255}, thickness = 0.5), Ellipse(origin = {0, -7}, fillColor = {255, 255, 127}, fillPattern = FillPattern.Solid, extent = {{-8, 7}, {8, -7}}), Line(origin = {0, -6.5}, points = {{0, 6.5}, {0, -7.5}, {0, -3.5}}), Line(origin = {-0.2, -5.67}, points = {{-7.85355, -1.20711}, {8.14645, -1.20711}}), Text(origin = {-65, -68}, extent = {{-17, 14}, {17, -14}}, textString = "Th"), Rectangle(origin = {-65, -69}, extent = {{-19, 15}, {19, -15}}, radius = 5), Text(origin = {-4, 63}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-10, 89}, extent = {{-10, 7}, {10, -7}}, textString = "b"), Text(origin = {-14, 63}, extent = {{-10, 7}, {10, -7}}, textString = "P"), Rectangle(origin = {-14, 68}, extent = {{-18, 14}, {18, -14}}, radius = 2), Text(origin = {-24, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X"), Text(origin = {-24, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X"), Text(origin = {-14, 75}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-24, 63}, extent = {{-10, 7}, {10, -7}}, textString = "R"), Text(origin = {-4, 75}, extent = {{-10, 7}, {10, -7}}, textString = "Z"), Polygon(origin = {-72, 89}, lineThickness = 0.5, points = {{0, 3}, {-4, -5}, {4, -5}, {0, 3}}), Text(origin = {-54, 75}, lineColor = {200, 200, 200}, extent = {{-10, 7}, {10, -7}}, textString = "Z"), Text(origin = {-74, 63}, lineColor = {200, 200, 200}, extent = {{-10, 7}, {10, -7}}, textString = "R"), Rectangle(origin = {-64, 68}, extent = {{-18, 14}, {18, -14}}, radius = 2), Text(origin = {-64, 63}, lineColor = {200, 200, 200}, extent = {{-10, 7}, {10, -7}}, textString = "P"), Text(origin = {-74, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X"), Text(origin = {-54, 63}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-60, 89}, extent = {{-10, 7}, {10, -7}}, textString = "m"), Text(origin = {-64, 75}, extent = {{-10, 7}, {10, -7}}, textString = "Y"), Text(origin = {-74, 75}, extent = {{-10, 7}, {10, -7}}, textString = "X")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
        Documentation(info = "<html><head></head><body><div><font face=\"MS Shell Dlg 2\">Ship model simplified to small movements from level trim loading condition. The phisics behind this model uses level trim hydrostatics to obtain the center of buoyancy position and applly the displacement force. Centre of buoyancy is corrected by heel and trim using the floatation area inertia properties.</font></div><div><font face=\"MS Shell Dlg 2\">Ship mass and inertia is indicated on the model by use of radii of gyration or absolute inertia moments about the centre of gravity and parallel to frame_a.</font></div><div><font face=\"MS Shell Dlg 2\">Damping factors are introduced by means of an equation depending on the relevant speed as follows:</font></div><div><font face=\"MS Shell Dlg 2\"><br></font></div><div><font face=\"MS Shell Dlg 2\">B = sum(ai * V ^ bi)</font></div><div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><br></div><div><u>Limitations:</u></div><div><u><br></u></div><div>Damping factors are represented by simple equations and no cross terms are used. These factors shall include added mass effect.</div><div><br></div><div><div style=\"font-family: -webkit-standard;\"><u>References:</u></div><div style=\"font-family: -webkit-standard;\"><u><br></u></div><div style=\"font-family: -webkit-standard;\"><div><span style=\"font-family: 'MS Shell Dlg 2';\">[Principles] Edward V. Lewis et al, \"Princiles of Naval Architecture\",&nbsp;</span><em style=\"font-family: 'MS Shell Dlg 2';\">SNAME</em><span style=\"font-family: 'MS Shell Dlg 2';\">, Second Revision, 1988</span></div><div><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div>[<span style=\"background-color: rgb(255, 255, 255);\">ModMultibody</span>] \"The new Modelica MultiBody Library\", M. Otter, H. Elmqvist and S.E. Mattsson. Proceedings of the 3rd International Modelica Conference (2003)</div></div></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><u>Know issues:</u></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\"><br></span></div><div style=\"font-family: -webkit-standard;\"><span style=\"font-family: 'MS Shell Dlg 2';\">N/A</span></div><div><br></div></div><div class=\"htmlDoc\" style=\"font-family: 'MS Shell Dlg 2';\"><div><u>Further development:</u></div><div><u><br></u></div><div>- Enhance damping factors</div><div><br></div></div></div></body></html>", revisions = "<html><head></head><body><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px;\">Rev 0.0: (17/06/2022): Initial release</span></body></html>"),
        Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
    end SimpleShipModel;
  end Outdated;
  annotation(
    preferredView = "info",
    version = "1.0",
    versionBuild = 0,
    versionDate = "2023-02-14",
    dateModified = "2023-02-14",
    revisionId = "$Format:%h %ci$",
    Icon(graphics = {Text(origin = {33, -54}, textColor = {80, 80, 80}, extent = {{-67, 54}, {67, -54}}, textString = "SS", fontName = "Franklin Gothic Demi", textStyle = {TextStyle.Bold}), Line(origin = {0, 20}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, smooth = Smooth.Bezier), Polygon(origin = {-30, 40}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-70, 10}, {64, 10}, {50, -10}, {-70, -10}, {-70, 10}}), Line(origin = {10, 15}, points = {{10, 15}, {-11, -15}}), Rectangle(origin = {-16, 65}, fillColor = {80, 80, 80}, fillPattern = FillPattern.Solid, extent = {{-5, 15}, {0, -15}}), Line(origin = {0, 10}, points = {{100, -20}, {50, 10}, {0, -20}, {-50, -50}, {-100, -20}}, smooth = Smooth.Bezier), Polygon(origin = {-25, 10}, fillColor = {200, 200, 200}, fillPattern = FillPattern.Solid, points = {{-9.5, 6}, {-9.5, -6}, {9.5, -6}, {9.5, 6}, {3.5, -2}, {1.5, -2}, {1.5, 5}, {-1.5, 5}, {-1.5, -2}, {-3.5, -2}, {-9.5, 6}})}, coordinateSystem(grid = {1, 1})),
    uses(Modelica(version = "3.2.3")),
    Documentation(info = "<html><head></head><body><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><b style=\"font-size: 10pt;\">ShipSIM package</b></p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\">Licensed by&nbsp;Basilio Puente and M Dolores Fernandez&nbsp;under the Modelica License&nbsp;2 with additional clause 16<br style=\"font-size: 10pt;\">Copyright © 2020-2023, Basilio Puente, M Dolores Fernandez and contributors.</p><p style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><em style=\"font-size: 10pt;\">ShipSIM Modelica package is&nbsp;<u style=\"font-size: 10pt;\">free</u>&nbsp;software and the use is completely at&nbsp;<u style=\"font-size: 10pt;\">your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License&nbsp;2 with additional clause 16. For license conditions (including the disclaimer of warranty) see ShipSIM.UsersGuide.License</em></p></body></html>"),
    Diagram(coordinateSystem(grid = {1, 1})));
end ShipSIM;
