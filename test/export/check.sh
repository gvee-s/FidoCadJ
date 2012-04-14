#!/bin/sh

# In the case of error, the ANSI control codes should make sort
# that the error message is well visible 

echo "Checking that all the exported files are identical to the models."
echo
echo "Now testing:"
echo "-------------"
if diff eps/test_out.eps eps/ref/test_out.eps >results_eps.txt
then
  echo "eps     OK"
  rm results_eps.txt
else
  echo -e "\033[1meps export is not conformal to the model. Please check results_eps.txt\033[0m"
fi

if diff pdf/test_out.pdf pdf/ref/test_out.pdf >results_pdf.txt
then
  echo "pdf     OK"
  rm results_pdf.txt
else
  echo -e "\033[1mpdf export is not conformal to the model. Please check results_pdf.txt\033[0m"
fi

if diff pgf/test_out.pgf pgf/ref/test_out.pgf >results_pgf.txt
then
  echo "pgf     OK"
  rm results_pgf.txt
else
  echo -e "\033[1mpgf export is not conformal to the model. Please check results_pgf.txt\033[0m"
fi

if diff scr/test_out.scr scr/ref/test_out.scr >results_scr.txt
then
  echo "scr     OK"
  rm results_scr.txt
else
  echo -e "\033[1mscr export is not conformal to the model. Please check results_scr.txt\033[0m"
fi

if diff svg/test_out.svg svg/ref/test_out.svg >results_svg_s.txt
then
  echo "svg S   OK"
  rm results_svg_s.txt
else
  echo -e "\033[1msvg export based on size is not conformal to the model. Please check results_svg_s.txt\033[0m"
fi
if diff svg/test_out_r.svg svg/ref/test_out_r.svg >results_svg_r.txt
then
  echo "svg R   OK"
  rm results_svg_r.txt
else
  echo -e "\033[1msvg export based on resolution is not conformal to the model. Please check results_svg_r.txt\033[0m"
fi


if diff png/test_out.png png/ref/test_out.png >results_png_r.txt
then
  echo "png R   OK"
  rm results_png_r.txt
else
  echo -e "\033[1mpng export based on resolution is not conformal to the model. Please check results_png_r.txt\033[0m"
fi
if diff png/test_out_r.png png/ref/test_out_r.png >results_png_s.txt
then
  echo "png S   OK"
  rm results_png_s.txt
else
  echo -e "\033[1mpng export based on size is not conformal to the model. Please check results_png_s.txt\033[0m"
fi

if diff jpg/test_out.jpg jpg/ref/test_out.jpg
then
  echo "jpg S   OK"
else
  echo -e "\033[1mjpg export based on resolution is not conformal to the model. Please check\033[0m"
fi

if diff jpg/test_out_r.jpg jpg/ref/test_out_R.jpg
then
  echo "jpg R   OK"
else
  echo -e "\033[1mjpg export based on size is not conformal to the model. Please check\033[0m"
fi
